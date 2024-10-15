--DATABASE
CREATE DATABASE cinema;
go
use cinema;
go
--DROP DATABASE cinema ; 

--TABLE
CREATE TABLE NhanVien (
    maNhanVien NVARCHAR(50) PRIMARY KEY,
    tenNhanVien NVARCHAR(255),
    soDienThoai NVARCHAR(50),
    chucVu NVARCHAR(50),
    gioiTinh BIT, 
    ngaySinh DATE,
    cCCD NVARCHAR(50),
    email NVARCHAR(50),
    caLamViec NVARCHAR(50)
);


CREATE TABLE KhachHang (
    maKhachHang NVARCHAR(50) PRIMARY KEY,
    tenKhachHang NVARCHAR(255),
    loaiKhachHang NVARCHAR(50),
    soDienThoai NVARCHAR(50),
    cCCD NVARCHAR(50),
    email NVARCHAR(50),
    ngaySinh DATE,
);


CREATE TABLE Phim (
    maPhim NVARCHAR(50) PRIMARY KEY,
    tenPhim NVARCHAR(255),
    theLoai NVARCHAR(50),
    daoDien NVARCHAR(255),
    dienVien NVARCHAR(255),
    namSanXuat INT,
    thoiLuong INT,
    moTa NVARCHAR(max)
);


CREATE TABLE LichChieuPhim (
    maLichChieu NVARCHAR(50) PRIMARY KEY,
    maPhim NVARCHAR(50), 
    ngayChieu DATE,
    gioChieu TIME,
    giaVe INT,
    trangThai BIT, 
    FOREIGN KEY (maPhim) REFERENCES Phim(maPhim)
);


CREATE TABLE Phong (
    tenPhong NVARCHAR(50),
    loaiPhong NVARCHAR(50)
);


CREATE TABLE MaGiamGia (
    maGiamGia NVARCHAR(50) PRIMARY KEY,
    phanTramGiam INT,
    ngayBatDau DATE,
    ngayKetThuc DATE,
    dieuKienApDung NVARCHAR(255)
);


CREATE TABLE LoaiVe (
    tenLoaiVe NVARCHAR(50),
    moTaLoaiVe NVARCHAR(255)
);


CREATE TABLE Ghe (
    maGhe NVARCHAR(50) PRIMARY KEY,
    tenGhe NVARCHAR(50),
    loaiGhe NVARCHAR(50),
    viTri NVARCHAR(50)
);


CREATE TABLE HoaDon (
    maHD INT PRIMARY KEY,
    ngayLapHD DATETIME,
    tienNhan FLOAT,
    tienDu FLOAT,
    tongTien FLOAT,
    maKhachHang NVARCHAR(50), 
    maNhanVien NVARCHAR(50), 
    FOREIGN KEY (maKhachHang) REFERENCES KhachHang(maKhachHang),
    FOREIGN KEY (maNhanVien) REFERENCES NhanVien(maNhanVien)
);


CREATE TABLE ChiTietHoaDon (
    maChiTiet NVARCHAR(50) PRIMARY KEY,
    soLuong INT,
    donGia FLOAT,
    thanhTien FLOAT,
    thue FLOAT,
    donViTinh NVARCHAR(50),
    maHD INT, 
    FOREIGN KEY (maHD) REFERENCES HoaDon(maHD)
);

--add data
INSERT INTO NhanVien (maNhanVien, tenNhanVien, soDienThoai,chucVu,gioiTinh,ngaySinh,cCCD,email, caLamViec) VALUES (N'NV001',N'Lê Văn Tuấn Nguyên',N'0876823455', N'Nhân viên',1,'2002-02-12',N'075701245672',N'levantuannguyen@gmail.com',N'Sáng');
INSERT INTO NhanVien (maNhanVien, tenNhanVien, soDienThoai,chucVu,gioiTinh,ngaySinh,cCCD,email, caLamViec) VALUES (N'NV002',N'Ngyễn Hoàng Sơn',N'0987654321', N'Quản lí',1,'2001-01-03',N'067457634523',N'nguyenhoangson@gmail.com',N'Cả ngày');
INSERT INTO NhanVien (maNhanVien, tenNhanVien, soDienThoai,chucVu,gioiTinh,ngaySinh,cCCD,email, caLamViec) VALUES (N'NV003',N'Nguyễn Đăng Thành An',N'0876984987', N'Nhân viên',1,'2002-07-12',N'081923845561',N'nguyendangthanhan@gmail.com',N'Tối');
INSERT INTO NhanVien (maNhanVien, tenNhanVien, soDienThoai,chucVu,gioiTinh,ngaySinh,cCCD,email, caLamViec) VALUES (N'NV004',N'Trống Tiểu Băng',N'0966757777', N'Nhân viên',1,'2002-08-21',N'012375681234',N'trongtieubang@gmail.com',N'Sáng');
INSERT INTO NhanVien (maNhanVien, tenNhanVien, soDienThoai,chucVu,gioiTinh,ngaySinh,cCCD,email, caLamViec) VALUES (N'NV005',N'Đỗ Thị Thu Thảo',N'0298677556', N'Nhân viên',0,'2002-01-23',N'012345667821',N'dothithuthao@gmail.com',N'Chiều');
INSERT INTO NhanVien (maNhanVien, tenNhanVien, soDienThoai,chucVu,gioiTinh,ngaySinh,cCCD,email, caLamViec) VALUES (N'NV006',N'Nguyễn Công Bằng',N'0897223445', N'Nhân viên',1,'2005-02-09',N'096587934245',N'nguyencongbang@gmail.com',N'Sáng');

INSERT INTO KhachHang (maKhachHang, tenKhachHang, loaiKhachHang,soDienThoai,cCCD,ngaySinh,email) VALUES (N'KH001',N'Nguyễn Minh Châu',N'Vàng', N'0966757777',N'075701245672','2002-02-12',N'nguyenminhchau@gmail.com');
INSERT INTO KhachHang (maKhachHang, tenKhachHang, loaiKhachHang,soDienThoai,cCCD,ngaySinh,email) VALUES (N'KH002',N'Thái Nhật Luân',N'Bạc', N'0298677556',N'012375681234','2001-01-03',N'thainhatluan@gmail.com');
INSERT INTO KhachHang (maKhachHang, tenKhachHang, loaiKhachHang,soDienThoai,cCCD,ngaySinh,email) VALUES (N'KH003',N'Hoàng Gia Bảo',N'Bạch Kim', N'0897223445',N'096587934245','2002-07-12',N'hoanggiabao@gmail.com');
INSERT INTO KhachHang (maKhachHang, tenKhachHang, loaiKhachHang,soDienThoai,cCCD,ngaySinh,email) VALUES (N'KH004',N'Nguyễn Thành Luân',N'Đồng', N'0876823455',N'067457634523','2002-08-21',N'nguyenthanhluan@gmail.com');
INSERT INTO KhachHang (maKhachHang, tenKhachHang, loaiKhachHang,soDienThoai,cCCD,ngaySinh,email) VALUES (N'KH005',N'Đăng Thành Tiến',N'Vàng', N'0987654321',N'081923845561','2002-01-23',N'dangthanhtien@gmail.com');
INSERT INTO KhachHang (maKhachHang, tenKhachHang, loaiKhachHang,soDienThoai,cCCD,ngaySinh,email) VALUES (N'KH006',N'Lê Thành Đạt',N'Vàng', N'0987678892',N'0912837645212','2005-02-09',N'lethanhdat@gmail.com');

INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P001',N'Mộ Đom Đóm',N'Hoạt Hình', N'Takahata Isao',N'Tatsumi Tsutomu, Shiraishi Ayano, Shinohara Yoshiko'
,'1989',N'89',N'Hai anh em Seita và Setsuko mất mẹ sau cuộc thả bom dữ dội của không quân Mỹ. Cả hai phải vật lộn để tồn tại ở Nhật Bản hậu Thế chiến II. Nhưng xã hội khắc nghiệt và chúng vật lộn tìm kiếm thức ăn cũng như thoát khỏi những khó khăn giữa chiến tranh.');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P002',N'KUMANTHONG',N'Kinh Dị', N'Xian Lim',N'Cindy Miranda, Althea Ruedas, Max Nattapol, Jariya'
,'2024',N'101',N'Sau cái chết của con trai, Sarah tìm đến vùng đất tâm linh Thái Lan, khẩn cần một thầy tu nổi tiếng sử dụng tro cốt đứa bé để tạo nên bức tượng Kumanthong. Bức tượng làm sống lại tình mẫu tử, nhưng triệu hồi những oan hồn ngạ quỷ đến đoạt xác cả gia đình Sarah.');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P003',N'Qủy Ăn Tạng 2',N'Kinh Dị', N'Taweewat Wantha',N'Nadech Kugimiya, Denise Jelilcha Kapaun'
,'2024',N'120',N'Ba năm sau cái chết của Yam, Yak vẫn tiếp tục săn lùng linh hồn bí ẩn mặc áo choàng đen. Gặp một cô gái có triệu chứng giống Yam, Yak phát hiện ra người bảo vệ linh hồn, pháp sư ẩn dật Puang, sống trong một khu rừng đầy nguy hiểm. Giữa những phép thuật 
ma quỷ và những sinh vật nguy hiểm. Khi họ đuổi theo linh hồn mặc áo choàng đen, tiếng kêu đầy ám ảnh của Tee Yod sắp quay trở lại một lần nữa...');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P004',N'JOKER: FOLIE À DEUX',N'Tâm Lý', N'Todd Phillips',N'Joaquin Phoenix, Lady Gaga, Zazie Beetz'
,'2024',N'138',N'"Joker: Folie à Deux" đưa Arthur Fleck đến trại tâm thần Arkham trong khi chờ xét xử cho những tội ác của hắn với tư cách là Joker. Trong lúc vật lộn với hai bản ngã của mình, Arthur không chỉ tìm thấy tình yêu đích thực mà còn khám phá ra âm nhạc luôn tồn tại trong con người hắn.');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P005',N'CÁM ',N'Kinh Dị', N'Trần Hữu Tấn',N'Quốc Cường, Thúy Diễm, Rima Thanh Vy, Lâm Thanh Mỹ, Hải Nam'
,'2024',N'122',N'Câu chuyện phim là dị bản kinh dị đẫm máu lấy cảm hứng từ truyện cổ tích nổi tiếng Tấm Cám, nội dung chính của phim xoay quanh Cám - em gái cùng cha khác mẹ của Tấm đồng thời sẽ có nhiều nhân vật và chi tiết sáng tạo, gợi cảm giác vừa lạ vừa quen cho khán giả.');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P006',N'TRANSFORMERS MỘT',N'Hoạt Hình', N'Josh Cooley',N'Chris Hemsworth; Brian Tyree Henry; Scarlett Johansson'
,'2024',N'104',N'Câu chuyện về nguồn gốc chưa từng được hé lộ của Optimus Prime và Megatron. Hai nhân vật được biết đến như những kẻ thù truyền kiếp, nhưng cũng từng là những người anh em gắn bó, đã thay đổi vận mệnh của Cybertron mãi mãi.');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P007',N'HAI MUỐI',N'Tình Cảm', N'Vu Thành Vinh',N'Hồng Vân, Việt Anh, Quyền Linh, Công Ninh, Minh Luân.'
,'2024',N'118',N'Muối – một cô gái mất mẹ từ khi vừa lọt lòng và lớn lên trong tình yêu thương của cha tại vùng đất xã đảo Thiềng Liềng. Bước ngoặt của hai cha con bắt đầu khi Muối trưởng thành, quyết định lên thành phố học tập và làm việc với ước mơ đổi đời để phụ giúp cha.');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P008',N'LOOK BACK',N'Hoạt Hình', N'Kiyotaka Oshiyama',N'Yumi Kawai, Mizuki Yoshida'
,'2024',N'58',N'Fujino tự tin thái quá, trong khi Kyomoto lại sống khép kín, cả hai dường như không thể khác biệt hơn, nhưng tình yêu mãnh liệt dành cho manga đã trở thành sợi dây duy nhất kết nối họ. Thế nhưng, một ngày nọ, một biến cố đã xảy ra, 
khiến thế giới của họ hoàn toàn thay đổi… “Look Back - Liệu ta có dám nhìn lại” là một câu chuyện trưởng thành đầy xúc động và day dứt.');
INSERT INTO Phim (maPhim, tenPhim, theLoai,daoDien,dienVien,namSanXuat,thoiLuong,moTa) VALUES (N'P009',N'ROBOT HOANG DÃ',N'Hoạt Hình', N'Chris Sanders',N'Lupita Nyongo, Pedro Pascal, Catherine O’hara, Bill Nighy.'
,'2024',N'102',N'Cuộc phiêu lưu hoành tráng theo chân hành trình của một robot — đơn vị ROZZUM 7134, gọi tắt là Roz. Roz vô tình dạt vào hoang đảo sau một sự cố và nơi đây trở thành địa điểm sống mới của cô. Tại đây, Roz kết thân và nhận nuôi một chú ngỗng con, đặt tên là Brightbill.
Roz và Brightbill dần dần thân thiết với các bạn thú trên đảo, song sau đó phải chống chọi, bảo vệ “nhà mới” trước sự xâm lăng của nhà máy từng sản xuất ra Roz.');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC001',N'P001',N'2024-10-07', N'10:45:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC002',N'P001',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC003',N'P001',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC004',N'P001',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC005',N'P001',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC006',N'P002',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC007',N'P002',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC008',N'P002',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC009',N'P002',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0010',N'P002',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0011',N'P003',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0012',N'P003',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0013',N'P003',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0014',N'P003',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0015',N'P003',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0016',N'P004',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0017',N'P004',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0018',N'P004',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0019',N'P004',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0020',N'P004',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0021',N'P005',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0022',N'P005',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0023',N'P005',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0024',N'P005',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0025',N'P005',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0026',N'P006',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0027',N'P006',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0028',N'P006',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0029',N'P006',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0030',N'P006',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0031',N'P007',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0032',N'P007',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0033',N'P007',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0034',N'P007',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0035',N'P007',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0036',N'P008',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0037',N'P008',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0038',N'P008',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0039',N'P008',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0040',N'P008',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0041',N'P009',N'2024-10-07', N'10:45:00',N'78000','0');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0042',N'P009',N'2024-10-07', N'13:15:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0043',N'P009',N'2024-10-07', N'17:20:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0044',N'P009',N'2024-10-07', N'19:25:00',N'78000','1');
INSERT INTO LichChieuPhim (maLichChieu, maPhim, ngayChieu,gioChieu,giaVe,trangThai) VALUES (N'LC0045',N'P009',N'2024-10-07', N'22:10:00',N'78000','1');

INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P01',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P02',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P03',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P04',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P05',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P06',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P07',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P08',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P09',N'2D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P010',N'3D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P011',N'3D');
INSERT INTO Phong (tenPhong, loaiPhong) VALUES (N'P012',N'4D');

INSERT INTO MaGiamGia (maGiamGia, phanTramGiam, ngayBatDau,ngayKetThuc,dieuKienApDung) VALUES (N'MGG01',N'25',N'2024-10-07', N'2029-10-07',N'Tuoi < 22');
INSERT INTO MaGiamGia (maGiamGia, phanTramGiam, ngayBatDau,ngayKetThuc,dieuKienApDung) VALUES (N'MGG02',N'10',N'2024-10-07', N'2024-11-20',N'Mang theo the sinh vien');
INSERT INTO MaGiamGia (maGiamGia, phanTramGiam, ngayBatDau,ngayKetThuc,dieuKienApDung) VALUES (N'MGG03',N'50',N'2024-10-07', N'2024-10-12',N'Hang thanh vien > Bach Kim');


INSERT INTO LoaiVe (tenLoaiVe, moTaLoaiVe) VALUES (N'LC0045',N'P009');


INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G01',N'A01',N'Đơn', N'A01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G02',N'A02',N'Đơn', N'A02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G03',N'A03',N'Đơn', N'A03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G04',N'A04',N'Đơn', N'A04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G05',N'A05',N'Đơn', N'A05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G06',N'A06',N'Đơn', N'A06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G07',N'A07',N'Đơn', N'A07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G08',N'A08',N'Đơn', N'A08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G09',N'A09',N'Đơn', N'A09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G010',N'A10',N'Đơn', N'A10');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G011',N'A11',N'Đơn', N'A11');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G012',N'B01',N'Đơn', N'B01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G013',N'B02',N'Đơn', N'B02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G014',N'B03',N'Đơn', N'B03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G015',N'B04',N'Đơn', N'B04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G016',N'B05',N'Đơn', N'B05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G017',N'B06',N'Đơn', N'B06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G018',N'B07',N'Đơn', N'B07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G019',N'B08',N'Đơn', N'B08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G020',N'B09',N'Đơn', N'B09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G021',N'B010',N'Đơn', N'B010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G022',N'B011',N'Đơn', N'B011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G023',N'C01',N'Đơn', N'C01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G024',N'C02',N'Đơn', N'C02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G025',N'C03',N'Đơn', N'C03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G026',N'C04',N'Đơn', N'C04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G027',N'C05',N'Đơn', N'C05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G028',N'C06',N'Đơn', N'C06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G029',N'C07',N'Đơn', N'C07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G030',N'C08',N'Đơn', N'C08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G031',N'C09',N'Đơn', N'C09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G032',N'C010',N'Đơn', N'C010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G033',N'C011',N'Đơn', N'C011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G034',N'D01',N'Đơn', N'D01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G035',N'D02',N'Đơn', N'D02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G036',N'D03',N'Đơn', N'D03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G037',N'D04',N'Đơn', N'D04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G038',N'D05',N'Đơn', N'D05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G039',N'D06',N'Đơn', N'D06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G040',N'D07',N'Đơn', N'D07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G041',N'D08',N'Đơn', N'D08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G042',N'D09',N'Đơn', N'D09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G043',N'D010',N'Đơn', N'D010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G044',N'D011',N'Đơn', N'D011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G045',N'E01',N'Đơn', N'E01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G046',N'E02',N'Đơn', N'E02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G047',N'E03',N'Đơn', N'E03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G048',N'E04',N'Đơn', N'E04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G049',N'E05',N'Đơn', N'E05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G050',N'E06',N'Đơn', N'E06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G051',N'E07',N'Đơn', N'E07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G052',N'E08',N'Đơn', N'E08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G053',N'E09',N'Đơn', N'E09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G054',N'E010',N'Đơn', N'E010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G055',N'E011',N'Đơn', N'E011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G056',N'F01',N'Đơn', N'F01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G057',N'F02',N'Đơn', N'F02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G058',N'F03',N'Đơn', N'F03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G059',N'F04',N'Đơn', N'F04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G060',N'F05',N'Đơn', N'F05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G061',N'F06',N'Đơn', N'F06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G062',N'F07',N'Đơn', N'F07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G063',N'F08',N'Đơn', N'F08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G064',N'F09',N'Đơn', N'F09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G065',N'F010',N'Đơn', N'F010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G066',N'F011',N'Đơn', N'F011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G067',N'G01',N'Đơn', N'G01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G068',N'G02',N'Đơn', N'G02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G069',N'G03',N'Đơn', N'G03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G070',N'G04',N'Đơn', N'G04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G071',N'G05',N'Đơn', N'G05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G072',N'G06',N'Đơn', N'G06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G073',N'G07',N'Đơn', N'G07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G074',N'G08',N'Đơn', N'G08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G075',N'G09',N'Đơn', N'G09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G076',N'G010',N'Đơn', N'G010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G077',N'G011',N'Đơn', N'G011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G078',N'H01',N'Đơn', N'H01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G079',N'H02',N'Đơn', N'H02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G080',N'H03',N'Đơn', N'H03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G081',N'H04',N'Đơn', N'H04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G082',N'H05',N'Đơn', N'H05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G083',N'H06',N'Đơn', N'H06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G084',N'H07',N'Đơn', N'H07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G085',N'H08',N'Đơn', N'H08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G086',N'H09',N'Đơn', N'H09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G087',N'H010',N'Đơn', N'H010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G088',N'H011',N'Đơn', N'H011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G089',N'I01',N'Đơn', N'I01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G090',N'I02',N'Đơn', N'I02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G091',N'I03',N'Đơn', N'I03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G092',N'I04',N'Đơn', N'I04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G093',N'I05',N'Đơn', N'I05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G094',N'I06',N'Đơn', N'I06');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G095',N'I07',N'Đơn', N'I07');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G096',N'I08',N'Đơn', N'I08');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G097',N'I09',N'Đơn', N'I09');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G098',N'I010',N'Đơn', N'I010');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G099',N'I011',N'Đơn', N'I011');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G0100',N'K01',N'Đôi', N'K01');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G0101',N'K02',N'Đôi', N'K02');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G0102',N'K03',N'Đôi', N'K03');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G0103',N'K04',N'Đôi', N'K04');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G0104',N'K05',N'Đôi', N'K05');
INSERT INTO Ghe (maGhe, tenGhe, loaiGhe,viTri) VALUES (N'G0105',N'K06',N'Đôi', N'K06');
