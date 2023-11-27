CREATE DATABASE CS157a;
-- Creating the UserType table
CREATE TABLE UserType (
    UserType_ID INT PRIMARY KEY,
    Description VARCHAR(255) NOT NULL
);

-- Creating the Department table
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);

-- Creating the Grade table
CREATE TABLE Grade (
    Grade_ID INT PRIMARY KEY,
    GradeValue VARCHAR(5) NOT NULL
);

-- Creating the UserAccount table
CREATE TABLE UserAccount (
    User_ID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    UserType_ID INT,
    FOREIGN KEY (UserType_ID) REFERENCES UserType(UserType_ID)
);

-- Creating the Student table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    DateOfBirth DATE,
    ContactNumber VARCHAR(20),
    Email VARCHAR(255),
    Address VARCHAR(255),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES UserAccount(User_ID)
);

-- Creating the Instructor table
CREATE TABLE Instructor (
    Instructor_ID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(20),
    Email VARCHAR(255),
    Department_ID INT,
    UserID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
    FOREIGN KEY (UserID) REFERENCES UserAccount(User_ID)
);

-- Creating the Course table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    CourseName VARCHAR(255) NOT NULL,
    CreditHours INT,
    Schedule VARCHAR(255),
    Instructor_ID INT,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID)
);

-- Creating the Enrollment table
CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    EnrollmentDate DATE,
    Grade_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
    FOREIGN KEY (Grade_ID) REFERENCES Grade(Grade_ID)
);
