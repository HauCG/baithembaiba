create database BaiThemCuaBaiBa;
use BaiThemCuaBaiBa;

create table Address(
AddressId int primary key,
AddressName varchar(200) not null
);
create table Classes(
ClassId int primary key,
ClassName varchar(200) not null,
ClassLanguage varchar(200) not null,
ClassDescription varchar(200) not null
);
create table Students(
StudentId int primary key,
StudentName varchar(200) not null,
StudentAge varchar(2) not null,
AddressId int,
StudentPhoneNumber varchar(10) unique not null ,
ClassId int,
foreign key (ClassId) references Classes(ClassId),
foreign key (AddressId) references Address(AddressId)
);
create table Courses(
CourseId int primary key,
CourseName varchar(200) not null,
CourseDescription varchar(200) not null
);
create table Points(
PointId int primary key,
CourseId int,
StudentId int,
Point int not null check(Point >= 0 and Point <= 10), 
foreign key (CourseId) references Courses(CourseId),
foreign key (StudentId) references Students(StudentId)
);
INSERT INTO Address (AddressId, AddressName) VALUES 
(1, '123 Phố Huế, Hai Bà Trưng, Hà Nội'),
(2, '456 Phố Chùa Bộc, Đống Đa, Hà Nội'),
(3, '789 Phố Nguyễn Khánh Toàn, Cầu Giấy, Hà Nội'),
(4, '101 Phố Lê Văn Lương, Thanh Xuân, Hà Nội'),
(5, '202 Phố Láng Hạ, Đống Đa, Hà Nội');
INSERT INTO Classes (ClassId, ClassName, ClassLanguage, ClassDescription) VALUES 
(1, 'Cơ Bản Lập Trình', 'Tiếng Anh', 'Khóa học cơ bản về các nguyên tắc và cú pháp lập trình'),
(2, 'Lập Trình Nâng Cao', 'Tiếng Anh', 'Khóa học nâng cao về các khái niệm lập trình và viết mã'),
(3, 'Giới Thiệu Về Python', 'Tiếng Anh', 'Khóa học giới thiệu về lập trình Python và cú pháp'),
(4, 'JavaScript Dành Cho Người Mới Bắt Đầu', 'Tiếng Anh', 'Khóa học cơ bản về JavaScript trong phát triển web'),
(5, 'Phát Triển Web', 'Tiếng Anh', 'Khóa học toàn diện về phát triển web sử dụng HTML, CSS và JavaScript');
INSERT INTO Students (StudentId, StudentName, StudentAge, AddressId, StudentPhoneNumber, ClassId) VALUES 
(1, 'Nguyễn Thị Lan', '20', 1, '0123456789', 1),
(2, 'Trần Văn Minh', '21', 2, '0987654321', 2),
(3, 'Lê Thị Minh Anh', '19', 3, '0345678910', 1),
(4, 'Phạm Minh Tuấn', '22', 4, '0567891234', 3),
(5, 'Nguyễn Văn Anh', '23', 5, '0678912345', 4),
(6, 'Trần Thị Bích', '20', null , '0789123456', 2),
(7, 'Lê Văn Hải', '21', null , '0891234567', 5),
(8, 'Phạm Thị Kim', '19', null , '0912345678', 1),
(9, 'Nguyễn Văn Phúc', '22', null , '0123456780', 3),
(10, 'Trần Thị Mai', '23', null , '0234567891', 4);
INSERT INTO Courses (CourseId, CourseName, CourseDescription) VALUES 
(1, 'Lập trình C++', 'Khóa học cơ bản về lập trình C++'),
(2, 'Lập trình Java', 'Khóa học từ cơ bản đến nâng cao về Java'),
(3, 'Lập trình Python', 'Khóa học học Python cho người mới bắt đầu'),
(4, 'Phát triển Web', 'Khóa học phát triển website với HTML, CSS, JavaScript'),
(5, 'Cơ sở dữ liệu', 'Khóa học về cơ sở dữ liệu và SQL'),
(6, 'Khoa học dữ liệu', 'Khóa học về khoa học dữ liệu và phân tích dữ liệu'),
(7, 'Machine Learning', 'Khóa học học máy và ứng dụng của nó'),
(8, 'Lập trình di động', 'Khóa học phát triển ứng dụng di động trên Android'),
(9, 'Thiết kế đồ họa', 'Khóa học về thiết kế đồ họa và sử dụng phần mềm Photoshop'),
(10, 'Marketing trực tuyến', 'Khóa học về tiếp thị trực tuyến và SEO'),
(11, 'Lập trình Ruby', 'Khóa học lập trình Ruby cho người mới bắt đầu'),
(12, 'An ninh mạng', 'Khóa học về an ninh mạng và bảo mật thông tin'),
(13, 'Quản lý dự án', 'Khóa học về quản lý dự án và Agile'),
(14, 'Kỹ năng giao tiếp', 'Khóa học phát triển kỹ năng giao tiếp hiệu quả'),
(15, 'Lập trình PHP', 'Khóa học lập trình PHP và phát triển ứng dụng web'),
(16, 'Phát triển game', 'Khóa học phát triển game với Unity'),
(17, 'Thống kê và xác suất', 'Khóa học về thống kê và xác suất trong khoa học dữ liệu'),
(18, 'IoT (Internet of Things)', 'Khóa học về Internet of Things và ứng dụng của nó'),
(19, 'Xử lý ảnh', 'Khóa học xử lý ảnh và thị giác máy tính'),
(20, 'Lập trình Node.js', 'Khóa học lập trình backend với Node.js');
INSERT INTO Points (PointId, CourseId, StudentId, Point) VALUES 
(1, 1, 1, 8),
(2, 2, 2, 9),
(3, 3, 3, 7),
(4, 4, 4, 6),
(5, 5, 5, 10),
(6, 1, 6, 5),
(7, 2, 7, 8),
(8, 3, 8, 4),
(9, 4, 9, 7),
(10, 5, 10, 9),
(11, 1, 1, 6),
(12, 2, 2, 5),
(13, 3, 3, 8),
(14, 4, 4, 7),
(15, 5, 5, 10);



