create DATABASE food_delivery;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    signup_date DATE,
    gender VARCHAR(10)
);
-- 2. RESTAURANTS (Independent table)
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    city VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(3,2)
);

-- 3. DELIVERY_AGENTS (Independent table)
CREATE TABLE delivery_agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100),
    city VARCHAR(100),
    joining_date DATE,
    rating DECIMAL(3,2)
);

-- 4. ORDERS (Depends on customers + restaurants)
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    discount DECIMAL(10,2),
    payment_method VARCHAR(50),
    delivery_time INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- 5. ORDER_ITEMS (Depends on orders)
CREATE TABLE order_item (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

drop database  IF EXISTS food_delivery;
select * from restaurants;

drop table restaurants;

show tables;


