#My project is an app that helps elementary school students sign up for after-school enrichment classes. Students allowed to take up to two free classes during the school year, and they can choose to take them either both in the fall, both in the spring, or one in each trimester. There are five types of classes offered each trimester: Art, Dance, Scratch, Basketball, and Lego. Each class has a mentor assigned to lead it. Enrollments - up to 30.

#The app has three types of users:
#Admins, who manage the system, add students data, add class offerings, and assign mentors.
#Mentors, who can view the list of students in their classes.
#Students, who can log in and enroll themselves in the classes they are interested in.

#
#Text-based ERD, indicating table names and column names:
#
 users:
    id: integer
    name: string
    email: string
    role: integer (admin, mentor, student)
    password_digest: string

student_profiles:
    id: integer
    user_id: integer
    grade: string
    year: string

mentor_profiles
    id: integer
    user_id: integer 

trimesters
    id: integer
    name: string ("Fall", "Spring")
    year: string ( "2025–2026" or "2025", "2026")
    start_date: date
    end_date: date

class_offerings
    id: integer
    name: string ("Scratch", "Art", "Dance", "Lego", "Football")
    trimester_id: string 
    mentor_id: integer 
    max_students: integer 

enrollments
    id: integer
    student_id: integer 
    class_offering_id: integer