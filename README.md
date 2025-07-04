# Đề Xuất Món Ăn (Recipe Suggestion System)

Hệ thống đề xuất món ăn dựa trên nguyên liệu có sẵn, sử dụng Node.js và SWI-Prolog.

## Yêu cầu hệ thống

- Node.js (phiên bản 14.0.0 trở lên)
- SWI-Prolog (phiên bản 8.0.0 trở lên)
- npm (Node Package Manager)

## Cài đặt

1. Cài đặt SWI-Prolog:

   - Windows: Tải và cài đặt từ [trang chủ SWI-Prolog](https://www.swi-prolog.org/download/stable)
   - Linux: `sudo apt-get install swi-prolog`
   - macOS: `brew install swi-prolog`

2. Clone repository:

   ```bash
   git clone <repository-url>
   cd <repository-name>
   ```

3. Cài đặt các dependencies:

   ```bash
   npm install
   ```

4. Thêm hình ảnh món ăn:
   - Tạo thư mục `public/images`
   - Thêm hình ảnh cho từng món ăn với tên file theo định dạng: `ten-mon-an.jpg`
   - Ví dụ: `salad-rau-tron.jpg`, `trung-chien.jpg`, etc.
   - Thêm các file hình ảnh mặc định: `default-food1.jpg` đến `default-food10.jpg`

## Cấu trúc thư mục

```
.
├── app.js              # Server Node.js
├── recipes.pl          # File Prolog chứa các công thức
├── public/
│   ├── index.html     # Giao diện người dùng
│   └── images/        # Thư mục chứa hình ảnh món ăn
├── package.json
└── README.md
```

## Chạy ứng dụng

1. Khởi động server:

   ```bash
   node app.js
   ```

2. Mở trình duyệt và truy cập:
   ```
   http://localhost:3000
   ```

## Sử dụng

1. Nhập các nguyên liệu có sẵn vào ô input, phân cách bằng dấu phẩy
2. Nhấn nút "Đề Xuất Món Ăn" hoặc nhấn Enter
3. Hệ thống sẽ hiển thị các món ăn phù hợp với nguyên liệu đã nhập

## Các món ăn có sẵn

- Salad Rau Tron (rau, dưa leo, cà chua)
- Trứng Chiên (trứng, hành)
- Gà Rán (thịt gà, bột)
- Phở Bò (thịt bò, bánh phở, rau thơm, hành, quế)
- Bún Chả (thịt heo, bún, rau sống, nước mắm, tỏi, ớt)
- Cơm Chiên Hải Sản (cơm, tôm, mực, trứng, hành)
- Mì Xào Hải Sản (mì, tôm, mực, rau cải, hành, tỏi)
- Lẩu Thái (tôm, mực, thịt bò, nấm, rau thơm, sả, lá chanh)

## Nguyên liệu thay thế

Hệ thống hỗ trợ một số nguyên liệu thay thế:

- Thịt gà ↔ Thịt bò
- Thịt heo ↔ Thịt bò
- Nước mắm ↔ Tương

## Xử lý lỗi

Nếu gặp lỗi "SWI-Prolog chưa được cài đặt", hãy:

1. Kiểm tra xem SWI-Prolog đã được cài đặt chưa
2. Đảm bảo SWI-Prolog đã được thêm vào PATH của hệ thống
3. Khởi động lại server sau khi cài đặt

## Đóng góp

Mọi đóng góp đều được hoan nghênh! Vui lòng tạo issue hoặc pull request để đóng góp.
