🔐 Login Authentication System

A simple and secure Login Authentication System that allows users to register, log in, and validate credentials. This project demonstrates the core concepts of authentication, session handling, and form validation in a web application.

📌 Features

👤 User Registration

🔑 User Login Authentication

❌ Invalid Username / Password Handling

🔐 Password Security (validation & checks)

📄 Session-based authentication

🎨 Clean and responsive UI

🛠️ Technologies Used

Frontend: HTML, CSS, JavaScript

Backend: Java (JSP / Servlets)

Database: MySQL

Server: Apache Tomcat

IDE: Eclipse

⚙️ How It Works

User registers using a valid username and password

Credentials are stored securely in the database

During login:

Entered credentials are verified against stored data

If valid → user is redirected to dashboard/home page

If invalid → error message is displayed

Session management ensures secure access

🚀 Setup & Installation
Prerequisites

Java JDK 8 or above

Apache Tomcat Server

MySQL Database

Eclipse IDE

Steps to Run

Clone the repository:

git clone https://github.com/your-username/your-repo-name.git


Import the project into Eclipse

Configure Apache Tomcat in Eclipse

Create the database and update DB credentials in the project

Run the project on server

Open browser and visit:

http://localhost:8080/project-name

🗄️ Database Structure

Table: users

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);

🧪 Sample Credentials
Username: admin
Password: admin123

📂 Project Structure
LoginAuthenticationSystem
│── src/
│── WebContent/
│── login.jsp
│── register.jsp
│── dashboard.jsp
│── web.xml

🔒 Security Notes

Passwords should be hashed before storing (recommended: bcrypt / SHA-256)

Input validation is applied to prevent invalid requests

Session handling prevents unauthorized access

📈 Future Enhancements

🔐 Password hashing & encryption

📧 Email verification

🔁 Forgot password functionality

🔑 Role-based authentication

👨‍💻 Author

Avdhut Dhawade
📌 GitHub: https://github.com/Avdhutdhawade
