const express = require('express');
const bodyParser = require('body-parser');
const { exec } = require('child_process');
const path = require('path');

const app = express();

// Middleware
app.use(bodyParser.json());
app.use(express.static('public'));

// Cấu hình đường dẫn SWI-Prolog
const SWIPL_PATH = process.env.SWIPL_PATH || 'swipl'; // Có thể thay đổi đường dẫn tùy theo cài đặt

// Hàm kiểm tra SWI-Prolog
function checkSwipl(callback) {
    exec(`${SWIPL_PATH} --version`, (error) => {
        if (error) {
            callback(new Error('SWI-Prolog chưa được cài đặt hoặc không tìm thấy. Vui lòng cài đặt SWI-Prolog và thêm vào PATH.'));
        } else {
            callback(null);
        }
    });
}

// API endpoint for recipe suggestions
app.post('/suggest', (req, res) => {
    // Kiểm tra SWI-Prolog trước
    checkSwipl((error) => {
        if (error) {
            return res.status(500).json({ 
                error: error.message,
                details: 'Vui lòng cài đặt SWI-Prolog từ https://www.swi-prolog.org/'
            });
        }

        const ingredients = req.body.ingredients.join(',');
        const command = `${SWIPL_PATH} -s recipes.pl -g "findall(R, suggest_recipe([${ingredients}], R), List), writeln(List)." -t halt`;
        
        exec(command, (error, stdout, stderr) => {
            if (error) {
                console.error('Error:', error);
                console.error('Stderr:', stderr);
                return res.status(500).json({ 
                    error: 'Lỗi khi thực thi Prolog',
                    details: error.message
                });
            }
            
            try {
                // Parse the Prolog output
                const suggestions = stdout
                    .trim()
                    .replace(/\[|\]/g, '')
                    .split(',')
                    .map(s => s.trim().replace(/'/g, ''))
                    .filter(s => s.length > 0);
                    
                res.json({ suggestions });
            } catch (parseError) {
                console.error('Parse Error:', parseError);
                res.status(500).json({ 
                    error: 'Lỗi khi xử lý kết quả',
                    details: parseError.message
                });
            }
        });
    });
});

// Serve the main page
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
    // Kiểm tra SWI-Prolog khi khởi động server
    checkSwipl((error) => {
        if (error) {
            console.error('Warning:', error.message);
        } else {
            console.log('SWI-Prolog is available');
        }
    });
}); 