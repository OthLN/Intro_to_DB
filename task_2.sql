-- Create the Authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT NOT NULL,
    author_name VARCHAR(215) DEFAULT NULL,
    PRIMARY KEY (author_id)
);

-- Create the Books table
CREATE TABLE IF NOT EXISTS Books (
    book_id INT NOT NULL,
    title VARCHAR(130) DEFAULT NULL,
    author_id INT DEFAULT NULL,
    price DOUBLE DEFAULT NULL,
    publication_date DATE DEFAULT NULL,
    PRIMARY KEY (book_id),
    KEY author_id (author_id),
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create the Customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT NOT NULL,
    customer_name VARCHAR(215) DEFAULT NULL,
    Email VARCHAR(215) DEFAULT NULL,
    address TEXT,
    PRIMARY KEY (customer_id)
);

-- Create the Orders table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT NOT NULL,
    customer_id INT DEFAULT NULL,
    order_date DATE DEFAULT NULL,
    PRIMARY KEY (order_id),
    KEY customer_id (customer_id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Order_Details table
CREATE TABLE IF NOT EXISTS Order_Details (
    order_detail_id INT NOT NULL,
    order_id INT DEFAULT NULL,
    book_id INT DEFAULT NULL,
    quantity DOUBLE DEFAULT NULL,
    PRIMARY KEY (order_detail_id),
    KEY order_id (order_id),
    KEY book_id (book_id),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
