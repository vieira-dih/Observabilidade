-- Criação do banco de dados (se não estiver já criado)
CREATE DATABASE northwind;

-- Criação de algumas tabelas com dados fictícios
\c northwind;

-- Tabela para armazenar informações de clientes
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    contact_name VARCHAR(100),
    contact_title VARCHAR(50),
    country VARCHAR(50)
);

-- Tabela para armazenar informações de pedidos
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    shipped_date DATE,
    freight DECIMAL(10, 2)
);

-- Tabela para armazenar informações de produtos
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    supplier_id INT,
    category_id INT,
    unit_price DECIMAL(10, 2)
);

-- Tabela para armazenar informações de categorias
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100),
    description TEXT
);

-- Tabela para armazenar informações de fornecedores
CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact_name VARCHAR(100),
    contact_title VARCHAR(50)
);

-- Inserção de alguns dados de exemplo
INSERT INTO customers (customer_name, contact_name, contact_title, country)
VALUES 
    ('Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Germany'),
    ('Berglunds snabbköp', 'Christina Berglund', 'Order Administrator', 'Sweden'),
    ('Blauer See Delikatessen', 'Hanna Moos', 'Marketing Assistant', 'Germany');

INSERT INTO products (product_name, supplier_id, category_id, unit_price)
VALUES 
    ('Chai', 1, 1, 18.00),
    ('Chang', 1, 1, 19.00),
    ('Aniseed Syrup', 2, 2, 10.00);

INSERT INTO categories (category_name, description)
VALUES 
    ('Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
    ('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings');

INSERT INTO suppliers (supplier_name, contact_name, contact_title)
VALUES 
    ('Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager'),
    ('New Orleans Cajun Delights', 'Debra Thomas', 'Sales Representative');

INSERT INTO orders (customer_id, order_date, shipped_date, freight)
VALUES 
    (1, '2025-04-01', '2025-04-03', 20.50),
    (2, '2025-04-05', '2025-04-07', 15.75),
    (3, '2025-04-10', '2025-04-12', 30.00);
