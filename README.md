# 📚 Online Book Store – SQL Database

This project provides the SQL schema and sample data for an **Online Book Store** system. It is designed to manage books, customers, orders, payments, and administrative functions required in an e-commerce setup for selling books online.

---

## 📁 File Structure

- `Onliene book Store.sql`: Contains all SQL statements to create and populate the database, including table creation, insert statements, and relationship definitions.

---

## 🛠️ How to Use

1. **Open your SQL client** (e.g., MySQL Workbench, phpMyAdmin, DBeaver).
2. **Create a new database**, e.g., `online_bookstore`.
3. **Import the SQL file**:
   - Load the `Onliene book Store.sql` file.
   - Run the script to create and populate tables.

---

## 📦 Database Tables

Below are the key tables included in this database:

- `admin` – Admin login details
- `book` – Book details (title, author, price, category, stock, etc.)
- `customer` – Customer registration and contact information
- `orders` – Customer order details
- `order_items` – Items in each order
- `payment` – Payment transaction details
- `category` – Book categories
- `publisher` – Publisher details
- `feedback` – Customer feedback for books

---

## 🔑 Features

- Admin and customer role-based structure
- Book management with categories and publishers
- Order and payment tracking
- Feedback collection system
- Normalized relational structure with foreign key constraints

---

## 💡 Use Cases

This database can be used for:

- Backend development of a book-selling e-commerce platform
- Learning and practicing SQL and database design
- Integrating with front-end technologies to create a full-stack application

---

## 📋 Requirements

- MySQL (or compatible RDBMS)
- SQL client (Workbench, DBeaver, etc.)

---

## 🚀 Future Scope

- Add user authentication and session tables
- Include book ratings and review system
- Support for inventory alerts and discounts

---

## 🧑‍💻 Author

- Designed by [Your Name or Team Name]
- [Optional: GitHub / Portfolio link]

