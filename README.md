# README

# Library App (Book Lending System)

## Overview
A simple book lending library application built with **Ruby on Rails 8**. This application allows users to:
- Manage books (Create, Read, Update, Delete)
- Borrow and return books (with borrower name and timestamps)
- View borrowing history for each book
- View a specific borrower's history

## Features
- **Tracks lending history**
- **Validations to ensure data integrity**
- **Uses SQLite3 for the database**

---

## Setup Instructions

### **1. Clone the Repository**
```sh
git clone https://github.com/yourusername/library_app.git
cd library_app
```

### **2. Install Dependencies**
Ensure you have Ruby and Bundler installed:
```sh
bundle install
```

### **3. Setup Database**
Run migrations to create the necessary tables:
```sh
rails db:migrate
```

### **4. Start the Rails Server**
```sh
rails server
```
Then, open `http://localhost:3000` in your browser.

---

## Usage

### **Managing Books**
- **Add a Book**: Click on `Add Book`, fill in details, and submit.
- **Edit/Delete a Book**: Go to a book's page and choose `Edit` or `Delete`.

### **Borrowing & Returning Books**
- **Borrow a Book**: Go to a book's page, enter a borrower's name, and submit.
- **Return a Book**: Click the `Return` button on a borrowed book.

### **Viewing Borrowing History**
- **Per Book**: View all borrow records on a book’s page.
- **Per Borrower**: Search for a borrower’s history.

---

## Running Tests
This app uses MiniTest for testing. Run tests using:
```sh
rails test
```
### Model Tests

- `test/models/book_test.rb`

- `test/models/borrowing_test.rb`

### Controller Tests

- `test/controllers/books_controller_test.rb`

- `test/controllers/borrowings_controller_test.rb`

---

## License
MIT License. Feel free to use and modify!


