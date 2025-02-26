# Blood Donation Management System

## Overview

This project is a web-based Blood Donation Management System built using **JSP**, **Servlets**, **Hibernate**, and **MySQL**. It facilitates both blood donation and blood requests. The platform connects blood donors and recipients, allowing users to easily donate blood and request blood in case of emergencies. This system is designed to streamline the process of connecting people in need with those who can provide life-saving blood.

## Features

- **Donate Blood**: Allows users to register as blood donors by providing their details.
- **Request Blood**: Users in need of blood can search for available donors based on blood type and location.
- **Database Integration**: MySQL is used as the database to store user and blood donor information.
- **JSP & Servlets**: Provides dynamic pages for user interaction and backend processing.

## Technologies Used

- **Java** (for backend logic)
- **JSP** (JavaServer Pages) for frontend view
- **Servlets** for request processing
- **Hibernate ORM** for database interaction
- **MySQL** for data storage
- **HTML/CSS** for basic styling of the interface

## Project Structure

1. **Frontend (JSP Files)**
   - **welcome.jsp**: The homepage of the application. It provides two buttons for the user to either donate blood or request blood.
   - **donate.jsp**: A form where blood donors can submit their details (name, blood group, city, phone number) to register as a donor.
   - **request.jsp**: A form where users can input the blood group and city they need, and the system will fetch a list of available blood donors based on the search criteria.

2. **Backend (Servlets)**
   - **DonateServlet**: Handles the logic for processing blood donation. It collects the donor's information from the form and stores it in the database.
   - **RequestServlet**: Handles the logic for processing blood requests. It allows users to enter their required blood group and city, and it fetches matching donors from the database.

3. **Database (MySQL)**
   - A MySQL database is used to store user and donor details. The table structure includes fields like name, blood group, city, and phone number.
   - Hibernate ORM is used for smooth interaction with the database.

## Step-by-Step Overview of the Project

1. **Homepage Interaction (welcome.jsp)**
   - When the user visits the homepage (`welcome.jsp`), they are presented with two options:
     - **Donate Blood**: For users who want to become blood donors.
     - **Request Blood**: For users who are looking for blood donations.

2. **Donate Blood Process**
   - If the user clicks the **Donate Blood** button, they are redirected to the `donate.jsp` page.
   - On this page, they are asked to provide their details:
     - **Name**
     - **Blood Group**
     - **City**
     - **Phone Number**
   - Once the form is filled out, the user submits it, and the data is processed by the `DonateServlet`.
   - The `DonateServlet` stores the user's information in the MySQL database, marking them as available for donation.

3. **Request Blood Process**
   - If the user clicks the **Request Blood** button, they are redirected to the `request.jsp` page.
   - On this page, the user is asked to enter:
     - **Blood Group**
     - **City**
   - After submitting the form, the `RequestServlet` is triggered.
   - The servlet queries the database for donors who match the requested blood group and city, and returns a list of available donors, including their **name** and **phone number**.
   
4. **Database Integration (MySQL & Hibernate)**
   - The donor details are stored in the database using Hibernate ORM. 
   - When a user requests blood, the system queries the database to find matching donors based on blood group and city.
   
5. **Display of Donors**
   - The list of available blood donors is displayed on the user’s screen, allowing them to contact the donors via the provided phone numbers.

## How to Use

1. **Clone this repository** to your local machine.
2. **Set up the MySQL database** and import the schema file (`database.sql`).
3. **Configure Hibernate** with the necessary database connection details (e.g., username, password, and database URL) in the Hibernate configuration file.
4. **Run the project** on your local server (e.g., Tomcat or Glassfish).
5. **Access the homepage** (`welcome.jsp`) in your browser and start donating or requesting blood.

## Future Enhancements

- **User Authentication**: Add login and registration features for users (donors and requesters).
- **Blood Donation History**: Allow users to view their past donations or requests.
- **Notifications**: Implement notifications for donors when their blood type is requested.
- **Admin Panel**: An admin interface to manage donors and requests.

## Conclusion

This project is designed to streamline blood donation and request processes, making it easier for people to find help in times of need. It can be enhanced with additional features such as user authentication, notifications, and administrative tools to better manage the system. Feel free to contribute to this project!

