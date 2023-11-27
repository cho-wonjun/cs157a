-- Inserting data into UserType
INSERT INTO UserType (UserType_ID, Description) VALUES
(1, 'Admin'),
(2, 'Instructor'),
(3, 'Student');

-- Inserting data into Department
INSERT INTO Department (Department_ID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics');

-- Inserting data into Grade
INSERT INTO Grade (Grade_ID, GradeValue) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'F');

-- Inserting data into UserAccount
INSERT INTO UserAccount (User_ID, Username, Password, UserType_ID) VALUES
(1, 'admin_user', 'admin_pass', 1),
(2, 'instructor_user', 'instructor_pass', 2),
(3, 'student_user', 'student_pass', 3);

-- Inserting data into Student
INSERT INTO Student (Student_ID, FirstName, LastName, DateOfBirth, ContactNumber, Email, Address, UserID) VALUES
(1, 'John', 'Doe', '1995-01-15', '1234567890', 'john.doe@example.com', '123 Main St', 3),
(2, 'Jane', 'Smith', '1998-05-20', '9876543210', 'jane.smith@example.com', '456 Oak St', 3),
(3, 'Alice', 'Johnson', '1997-08-12', '5551112233', 'alice.johnson@example.com', '789 Pine St', 3),
(4, 'Bob', 'Williams', '1996-03-25', '5554445566', 'bob.williams@example.com', '101 Elm St', 3),
(5, 'Eva', 'Miller', '1999-11-08', '5556667788', 'eva.miller@example.com', '202 Maple St', 3),
(6, 'Charlie', 'Davis', '1998-06-17', '5558889900', 'charlie.davis@example.com', '303 Birch St', 3),
(7, 'Grace', 'Jones', '1997-04-22', '5551112233', 'grace.jones@example.com', '404 Oak St', 3),
(8, 'Andrew', 'Taylor', '1996-09-15', '5554445566', 'andrew.taylor@example.com', '505 Elm St', 3),
(9, 'Olivia', 'Moore', '1999-02-10', '5556667788', 'olivia.moore@example.com', '606 Pine St', 3),
(10, 'Daniel', 'Clark', '1998-07-18', '5558889900', 'daniel.clark@example.com', '707 Birch St', 3);


-- Inserting data into Instructor
INSERT INTO Instructor (Instructor_ID, FirstName, LastName, ContactNumber, Email, Department_ID, UserID) VALUES
(1, 'Professor', 'Johnson', '5551234567', 'prof.johnson@example.com', 1, 2),
(2, 'Dr.', 'Anderson', '5559876543', 'dr.anderson@example.com', 2, 2),
(3, 'Dr.', 'Smith', '5557778899', 'dr.smith@example.com', 1, 2),
(4, 'Professor', 'Davis', '5559991122', 'prof.davis@example.com', 3, 2),
(5, 'Prof.', 'Wilson', '5552223344', 'prof.wilson@example.com', 2, 2),
(6, 'Dr.', 'Brown', '5554445566', 'dr.brown@example.com', 1, 2),
(7, 'Prof.', 'Evans', '5552223344', 'prof.evans@example.com', 3, 2),
(8, 'Dr.', 'Johnson', '5554445566', 'dr.johnson@example.com', 2, 2),
(9, 'Professor', 'Ward', '5556667788', 'prof.ward@example.com', 1, 2),
(10, 'Dr.', 'Baker', '5558889900', 'dr.baker@example.com', 3, 2),


-- Inserting data into Course
INSERT INTO Course (Course_ID, CourseName, CreditHours, Schedule, Instructor_ID) VALUES
(1, 'Database Management', 3, 'MWF 10:00 AM - 11:30 AM', 1),
(2, 'Linear Algebra', 4, 'TTH 2:00 PM - 3:30 PM', 2),
(3, 'Data Structures', 3, 'MWF 2:00 PM - 3:30 PM', 3),
(4, 'Calculus I', 4, 'TTH 9:00 AM - 10:30 AM', 4),
(5, 'Software Engineering', 3, 'TTH 10:00 AM - 11:30 AM', 5),
(6, 'Statistics', 4, 'MWF 1:00 PM - 2:30 PM', 6),
(7, 'Computer Networks', 3, 'MWF 11:30 AM - 1:00 PM', 7),
(8, 'Algorithms', 4, 'TTH 3:30 PM - 5:00 PM', 8),
(9, 'Artificial Intelligence', 3, 'MWF 9:00 AM - 10:30 AM', 9),
(10, 'Web Development', 4, 'TTH 1:00 PM - 2:30 PM', 10);


-- Inserting data into Enrollment
INSERT INTO Enrollment (Enrollment_ID, Student_ID, Course_ID, EnrollmentDate, Grade_ID) VALUES
(1, 1, 1, '2023-01-01', 1),
(2, 2, 2, '2023-01-02', 2),
(3, 3, 3, '2023-01-03', 3),
(4, 4, 4, '2023-01-04', 4),
(5, 5, 5, '2023-01-05', 5),
(6, 6, 6, '2023-01-06', 6),
(7, 7, 7, '2023-01-07', 7),
(8, 8, 8, '2023-01-08', 8),
(9, 9, 9, '2023-01-09', 9),
(10, 10, 10, '2023-01-10', 10);
