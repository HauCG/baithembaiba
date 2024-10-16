-- Viết câu query thực hiện:

-- Tìm kiếm HV có họ Nguyen
-- use BaiThemCuaBaiBa;
-- select StudentName
-- from Students
-- Where StudentName like 'Nguyễn%';

-- Tìm kiếm HV có ten Anh
-- use BaiThemCuaBaiBa;
-- select StudentName
-- from Students
-- Where StudentName like '%Anh';

-- Tim kiem HV có độ tuổi tư 18-25
-- use BaiThemCuaBaiBa;
-- select StudentName, StudentAge
-- from Students
-- Where (StudentAge >18 and StudentAge <25) ;

-- Tìm kiếm HV có id là 9 hoặc 7
-- use BaiThemCuaBaiBa;
-- select  StudentId, StudentName
-- from Students
-- Where StudentId in (7,9) ;


-- Thống kê số lượng học viên các lớp (count)
-- USE BaiThemCuaBaiBa;
-- SELECT Classes.ClassId, Classes.ClassName, COUNT(Students.StudentId) AS NumberOfStudents
-- FROM Classes
-- LEFT JOIN Students ON Classes.ClassId = Students.ClassId
-- GROUP BY Classes.ClassId, Classes.ClassName;

-- Thống kê số lượng học viên tại các quận (count)
-- USE BaiThemCuaBaiBa;
-- SELECT 
--     CASE 
--         WHEN Address.AddressName LIKE '%Hai Bà Trưng%' THEN 'Hai Bà Trưng'
--         WHEN Address.AddressName LIKE '%Đống Đa%' THEN 'Đống Đa'
--         WHEN Address.AddressName LIKE '%Cầu Giấy%' THEN 'Cầu Giấy'
--         WHEN Address.AddressName LIKE '%Thanh Xuân%' THEN 'Thanh Xuân'
--     END AS DistrictName,
--     COUNT(Students.StudentId) AS NumberOfStudents
-- FROM Address
-- LEFT JOIN Students ON Address.AddressId = Students.AddressId
-- WHERE 
--     Address.AddressName LIKE '%Hai Bà Trưng%' OR
--     Address.AddressName LIKE '%Đống Đa%' OR
--     Address.AddressName LIKE '%Cầu Giấy%' OR
--     Address.AddressName LIKE '%Thanh Xuân%'
-- GROUP BY DistrictName;

-- - Viết các câu lệnh truy vấn thực hiện nhiệm vụ sau:-- 

-- Tính điểm trung bình của các khóa học (avg)
-- USE BaiThemCuaBaiBa;
-- SELECT 
--     Courses.CourseId, 
--     Courses.CourseName, 
--     AVG(Points.Point) AS AverageScore
-- FROM Courses
-- LEFT JOIN Points ON Courses.CourseId = Points.CourseId 
-- GROUP BY Courses.CourseId, Courses.CourseName;

-- Lấy ra điểm cao nhất, thấp nhất của các khóa học (avg)
-- USE BaiThemCuaBaiBa;
-- SELECT 
--     Courses.CourseId,
--     Courses.CourseName, 
--     MAX(Points.Point) AS HighestScore,
--     MIN(Points.Point) AS LowestScore 
-- FROM Courses 
-- LEFT JOIN Points ON Courses.CourseId = Points.CourseId
-- GROUP BY Courses.CourseId, Courses.CourseName;

-- Lấy ra danh sách HS, Chuyển đổi tên HS thành chữ hoa
-- USE BaiThemCuaBaiBa;
-- SELECT  StudentId , UPPER(StudentName) AS StudentUpperName
-- FROM Students
-- group by StudentId

-- Đưa ra khoá học có điểm trung bình cao nhất
-- USE BaiThemCuaBaiBa;
-- SELECT 
--     Courses.CourseId, 
--     Courses.CourseName, 
--     AVG(Points.Point) AS AverageScore
-- FROM Courses
-- LEFT JOIN Points ON Courses.CourseId = Points.CourseId 
-- GROUP BY Courses.CourseId, Courses.CourseName
-- ORDER BY AverageScore DESC
-- Limit 1




