CREATE TABLE AUTHORS(
    author_id INT AUTO_INCREMENT PRIMARY KEY, 
    author_name VARCHAR(100) NOT NULL);

CREATE TABLE Books( 
    book_id INT AUTO_INCREMENT PRIMARY KEY, 
    title VARCHAR(100) NOT NULL, author_id INT, 
    price DOUBLE NOT NULL, 
    publication_date DATE, 
    FOREIGN KEY (author_id) 
    REFERENCES Authors(author_id));

CREATE TABLE Customers( 
    customer_id INT AUTO_INCREMENT PRIMARY KEY, 
    customer_name VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL, address TEXT);

CREATE TABLE Orders( 
    order_id INT AUTO_INCREMENT PRIMARY KEY, 
    customer_id INT, 
    order_date DATE, 
    FOREIGN KEY (customer_id) 
    REFERENCES Customers(customer_id));

CREATE TABLE Order_Details( 
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY, 
    order_id INT, book_id INT, 
    quantity DOUBLE NOT NULL, FOREIGN KEY (order_id) 
    REFERENCES Orders(order_id), 
    FOREIGN KEY (book_id) 
    REFERENCES Books(book_id));