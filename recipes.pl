% Định nghĩa các công thức món ăn
recipe('Banh Mi Thit', ['banh mi', 'thit heo', 'dua leo', 'chanh'], []).
recipe('Pho Bo', ['banh pho', 'thit bo', 'rau thom'], ['hanh', 'que']).
recipe('Mi Quang', ['banh da', 'mien'], ['giam']).
recipe('Bun Cha', ['bun', 'thit heo', 'rau song'], ['nuoc mam', 'chanh', 'ot']).
recipe('Goi Cuon', ['banh trang', 'tom', 'thit heo'], ['rau song', 'gia do']).
recipe('Cha Gio', ['thit heo', 'mi goi'], ['ngo ri', 'la chanh']).
recipe('Banh Bao', ['bot mi', 'thit heo'], ['trung']).
recipe('Com Ga Hai Nam', ['com', 'ga'], ['nuoc cot dua']).
recipe('Banh Beo Hue', ['gao nep', 'nuoc cot dua', 'tom'], ['hanh', 'dua leo']).
recipe('Bun Bo Hue', ['bun', 'bo', 'rau'], ['hanh', 'mam tom']).
recipe('Com Chien Hai San', ['com', 'tom', 'muc'], ['trung', 'hanh']).
recipe('Bun Oc', ['bun', 'oc'], ['hanh', 'nuoc mam']).
recipe('Tom Nuong', ['tom'], ['nuoc mam', 'toi']).
recipe('Canh Chua Ca', ['ca', 'dua leo', 'dua chua'], ['chanh']).
recipe('Bo Luc Lac', ['bo', 'hanh'], ['tieu']).
recipe('Bun Mam', ['bun', 'mam'], ['duong', 'hanh']).
recipe('Xoi Ga', ['gao nep', 'ga'], ['hanh']).
recipe('Goi Ga', ['ga', 'dua leo', 'rau song'], ['chanh']).
recipe('Ga Nuong', ['ga'], ['nuoc mam', 'duong']).
recipe('Banh Mi Kep Thit', ['banh mi', 'thit'], ['dua leo', 'hanh']).
recipe('Cha Ca La Vong', ['ca', 'tha la'], ['hanh', 'nuoc mam']).
recipe('Banh Trang Tron', ['banh trang', 'dua leo'], ['hanh', 'ot']).
recipe('Xoi Man', ['gao nep', 'thit'], ['dau']).
recipe('Banh Khoai Mi Nuong', ['khoai mi', 'duong'], ['nuoc cot dua']).
recipe('Lau Thai', ['tom', 'muc', 'bo'], ['nam', 'rau thom']).
recipe('Banh Cuon', ['gao nep', 'hanh'], ['thit', 'dua leo']).
recipe('Bun Dau Mam Tom', ['bun', 'dau hu', 'mam tom'], ['rau song', 'ot']).
recipe('Goi Tom', ['tom', 'dua leo'], ['rau song', 'chanh']).
recipe('Canh Mang Nau Thit', ['mang', 'thit'], ['nuoc mam', 'toi']).
recipe('Nem Ran', ['thit heo', 'bun', 'rau'], ['banh trang']).
recipe('Banh Goi', ['gao nep', 'thit', 'nam'], ['hanh']).
recipe('Com Suon Nuong', ['com', 'suon'], ['hanh', 'nuoc mam']).
recipe('Mi Xao Bo', ['mi', 'bo'], ['hanh', 'toi']).
recipe('Chao Ga', ['gao nep', 'ga'], ['hanh', 'tieu']).
recipe('Bun Thit Nuong', ['bun', 'thit nuong'], ['rau', 'nuoc mam']).
recipe('Cha Tom', ['tom'], ['hanh', 'nuoc mam']).
recipe('Canh Ga', ['ga', 'rau'], ['nuoc mam']).
recipe('Tom Rang Muoi', ['tom'], ['muoi', 'tieu']).
recipe('Bun Thang', ['bun', 'ga'], ['tron', 'hanh']).
recipe('Ca Kho To', ['ca'], ['nuoc mam', 'duong']).
recipe('Banh Beo', ['gao nep'], ['nuoc cot dua', 'hanh', 'tom']).
recipe('Mi Quang Ga', ['mi', 'ga'], ['dua leo', 'rau']).
recipe('Banh Da Cua', ['banh da', 'cua'], ['rau', 'nuoc mam']).
recipe('Che Ba Mau', ['duong', 'dau xanh', 'dua leo'], []).
recipe('Chao Tom Nuong', ['tom', 'gao nep'], ['hanh', 'toi']).
recipe('Bun Bo Nam Bo', ['bun', 'bo'], ['rau', 'nuoc mam']).
recipe('Com Chien Trung', ['com', 'trung'], ['hanh', 'dau']).
recipe('Ga Rang Muoi', ['ga'], ['muoi', 'toi']).


% Định nghĩa các nguyên liệu thay thế
replacement('thit ga', 'thit bo').
replacement('thit bo', 'thit ga').
replacement('thit heo', 'thit bo').
replacement('thit heo', 'thit ga').
replacement('nuoc mam', 'tuong').
replacement('tuong', 'nuoc mam').
replacement('dua leo', 'dua chuot').
replacement('dua chuot', 'dua leo').
replacement('hanh', 'hanh toi').
replacement('hanh toi', 'hanh').
replacement('tom', 'muc').
replacement('muc', 'tom').
replacement('bo', 'thit bo').
replacement('bo', 'thit ga').
replacement('bo', 'thit heo').
replacement('com', 'gao').
replacement('gao', 'com').
replacement('bot', 'bot mi').
replacement('bot mi', 'bot').
replacement('rau thom', 'rau ram').
replacement('rau ram', 'rau thom').
replacement('ot', 'tieu').
replacement('tieu', 'ot').
replacement('chanh', 'lemon').
replacement('lemon', 'chanh').
replacement('dua leo', 'dua chuot').
replacement('dua chuot', 'dua leo').
replacement('mam tom', 'nuoc mam').
replacement('nuoc mam', 'mam tom').
replacement('duong', 'cong').
replacement('cong', 'duong').
replacement('bot', 'bot chien').
replacement('bot chien', 'bot').
replacement('mien', 'mi').
replacement('mi', 'mien').
replacement('rau cai', 'rau muong').
replacement('rau muong', 'rau cai').
replacement('nam', 'nam huong').
replacement('nam huong', 'nam').
replacement('chanh day', 'chanh leo').
replacement('chanh leo', 'chanh day').
replacement('to', 'toi').
replacement('toi', 'to').
replacement('dua chua', 'dua muoi').
replacement('dua muoi', 'dua chua').
replacement('thit', 'thit heo').
replacement('thit', 'thit bo').
replacement('thit', 'thit ga').
replacement('bo', 'thit').
replacement('dau hu', 'tofu').
replacement('tofu', 'dau hu').
replacement('suon', 'sườn').
replacement('sườn', 'suon').
replacement('ga', 'thit ga').
replacement('trung', 'trung ga').
replacement('trung ga', 'trung').
replacement('cha gio', 'nem ran').
replacement('nem ran', 'cha gio').
replacement('banh mi', 'banh mi que').
replacement('banh mi que', 'banh mi').
replacement('banh bao', 'banh bao xao').
replacement('banh bao xao', 'banh bao').
replacement('duong', 'duong cat').
replacement('duong cat', 'duong').
replacement('mo', 'mo heo').
replacement('mo heo', 'mo').
replacement('rau song', 'rau muong').
replacement('rau muong', 'rau song').


% Kiểm tra xem danh sách nguyên liệu có thể bao gồm cả nguyên liệu thay thế
ingredient_available(Ingredient, Ingredients) :-
    member(Ingredient, Ingredients).
ingredient_available(Ingredient, Ingredients) :-
    replacement(Ingredient, Alternative),
    member(Alternative, Ingredients).

% Kiểm tra nếu tất cả nguyên liệu (hoặc thay thế của chúng) đều có trong danh sách nguyên liệu
all_ingredients_available([], _).
all_ingredients_available([H | T], Ingredients) :-
    ingredient_available(H, Ingredients),
    all_ingredients_available(T, Ingredients).

% Gợi ý món ăn với hỗ trợ thay thế nguyên liệu
suggest_recipe(Ingredients, Recipe) :-
    recipe(Recipe, Required),
    all_ingredients_available(Required, Ingredients). 