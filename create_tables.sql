CREATE TABLE sellers(
    id_seller SERIAL PRIMARY KEY,
    sel_name VARCHAR (50) NOT NULL,
    birthdate DATE NOT NULL,
    address VARCHAR (100) NOT NULL,
    email VARCHAR (50) NOT NULL,
    register_number INTEGER NOT NULL,
    admission_date DATE NOT NULL
);

CREATE TABLE clients (
    id_client SERIAL PRIMARY KEY,
    cli_name VARCHAR(50) NOT NULL,
    birthdate DATE NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE products (
    id_product SERIAL PRIMARY KEY,
    prod_name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    quantity_available INTEGER NOT NULL,
    price MONEY NOT NULL
);

CREATE TABLE sales (
    id_sales SERIAL PRIMARY KEY,
    seller INTEGER REFERENCES sellers(id_seller),
    client INTEGER REFERENCES clients(id_client),
    product INTEGER REFERENCES products(id_product),
    quantity_sold INTEGER
);

