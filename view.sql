CREATE VIEW StudentInfoWithUser AS
SELECT
    S.Student_ID,
    S.FirstName,
    S.LastName,
    S.DateOfBirth,
    S.ContactNumber,
    S.Email,
    S.Address,
    U.Username,
    U.Password,
    UT.Description AS UserType
FROM
    Student S
JOIN
    UserAccount U ON S.UserID = U.User_ID
JOIN
    UserType UT ON U.UserType_ID = UT.UserType_ID;

CREATE VIEW EnrollmentInfo AS
SELECT
    E.Enrollment_ID,
    E.EnrollmentDate,
    S.FirstName AS StudentFirstName,
    S.LastName AS StudentLastName,
    C.CourseName,
    I.FirstName AS InstructorFirstName,
    I.LastName AS InstructorLastName,
    G.GradeValue
FROM
    Enrollment E
JOIN
    Student S ON E.Student_ID = S.Student_ID
JOIN
    Course C ON E.Course_ID = C.Course_ID
JOIN
    Instructor I ON C.Instructor_ID = I.Instructor_ID
LEFT JOIN
    Grade G ON E.Grade_ID = G.Grade_ID;

CREATE VIEW InstructorWithDepartment AS
SELECT
    I.Instructor_ID,
    I.FirstName,
    I.LastName,
    I.ContactNumber,
    I.Email,
    D.DepartmentName
FROM
    Instructor I
JOIN
    Department D ON I.Department_ID = D.Department_ID;
