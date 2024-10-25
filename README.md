# WashIt - Online Laundry Management System

Welcome to **WashIt**, an easy-to-use online laundry management system designed to streamline the process of managing laundry orders for both businesses and customers. WashIt helps laundry service providers track customer orders, manage pickup and delivery, and streamline their day-to-day operations efficiently.

## Features

- **Order Management**: Easily track and manage customer orders including items, quantities, and statuses.
- **Customer Database**: Store and retrieve customer information including contact details and addresses.
- **Real-Time Order Tracking**: Customers can track their laundry orders from pickup to delivery.
- **Notification System**: Customers receive notifications when their order is ready for pickup or has been delivered.
- **Custom Pricing**: Set prices for different items and services (e.g., washing, ironing, dry cleaning).
- **User-Friendly Interface**: Simple, intuitive UI for both service providers and customers.

## Tech Stack

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Java (Servlets, JSP)
- **Database**: MySQL
- **Server**: Apache Tomcat
- **Other Tools**: JDBC for database connectivity, JSTL for dynamic content rendering

## Installation

Follow these steps to get the project up and running on your local machine:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/kumodN/WashIt.git
2. Import the project into your preferred IDE (e.g., IntelliJ, Eclipse).
3. Set up the database:
    Create a MySQL database named washit_db.
    Import the SQL schema from the /db directory to create necessary tables.
4. Configure database connection:
    Update the database connection details in the DBConnection.java file under the washitPackage.
5. Deploy the project:
    Deploy the project on an Apache Tomcat server.
6. Run the application:
    Visit http://localhost:8080/WashIt to access the application.

## How to Use
1. Login/Signup: Customers can create an account or log in to place laundry orders.
2. Place an Order: Choose the items for laundry, specify quantity, and select services like washing, ironing, etc.
3. Track Orders: Keep track of the order's progress and get notified when it's ready.
4. Manage Orders (Admin): Laundry service providers can manage incoming orders, update their status, and view customer details.

## Screenshots

![Screenshot (132)](https://github.com/user-attachments/assets/7682bcbf-f430-4d00-ba18-200b47ab3dce)
![Screenshot (130)](https://github.com/user-attachments/assets/b3bbb66b-bd2f-4fa2-9d3b-9d5c0e5c039e)
![Screenshot (133)](https://github.com/user-attachments/assets/1d744ebe-309f-4f95-b731-a8eda54973de)
![Screenshot (134)](https://github.com/user-attachments/assets/4d8d9d19-8eba-4852-bb37-7b9248ca1fc9)

## Contributing
If you'd like to contribute to WashIt, feel free to fork the repository and submit pull requests. Contributions are welcome for bug fixes, new features, or documentation updates.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

## Contact
If you have any questions or issues, feel free to reach out:

Email: kumodnenuk@gmail.com
GitHub: https://github.com/kumodN

Thank you for using WashIt!
