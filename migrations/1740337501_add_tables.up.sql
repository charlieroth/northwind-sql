CREATE TABLE IF NOT EXISTS us_states (
    state_id SMALLINT NOT NULL PRIMARY KEY,
    state_name VARCHAR(100),
    state_abbr VARCHAR(2),
    state_region VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS region (
    region_id SMALLINT NOT NULL PRIMARY KEY,
    region_description BPCHAR NOT NULL
);
CREATE TABLE IF NOT EXISTS suppliers (
    supplier_id SMALLINT NOT NULL PRIMARY KEY,
    company_name VARCHAR(40) NOT NULL,
    contact_name VARCHAR(30),
    contact_title VARCHAR(30),
    address VARCHAR(60),
    city VARCHAR(15),
    region VARCHAR(15),
    postal_code VARCHAR(10),
    country VARCHAR(15),
    phone VARCHAR(24),
    fax VARCHAR(24),
    homepage TEXT
);
CREATE TABLE IF NOT EXISTS employees (
    employee_id SMALLINT NOT NULL PRIMARY KEY,
    last_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(10) NOT NULL,
    title VARCHAR(30),
    title_of_courtesy VARCHAR(25),
    birth_date DATE,
    hire_date DATE,
    address VARCHAR(60),
    city VARCHAR(15),
    region VARCHAR(15),
    postal_code VARCHAR(10),
    country VARCHAR(15),
    home_phone VARCHAR(24),
    extension VARCHAR(4),
    photo BYTEA,
    notes TEXT,
    reports_to SMALLINT,
    photo_path VARCHAR(255),
    FOREIGN KEY (reports_to) REFERENCES employees
);
CREATE TABLE IF NOT EXISTS shippers (
    shipper_id SMALLINT NOT NULL PRIMARY KEY,
    company_name VARCHAR(40) NOT NULL,
    phone VARCHAR(24)
);
CREATE TABLE IF NOT EXISTS customers (
    customer_id BPCHAR NOT NULL PRIMARY KEY,
    company_name VARCHAR(40) NOT NULL,
    contact_name VARCHAR(30),
    contact_title VARCHAR(30),
    address VARCHAR(60),
    city VARCHAR(15),
    region VARCHAR(15),
    postal_code VARCHAR(10),
    country VARCHAR(15),
    phone VARCHAR(24),
    fax VARCHAR(24)
);
CREATE TABLE IF NOT EXISTS categories (
    category_id SMALLINT NOT NULL PRIMARY KEY,
    category_name VARCHAR(15) NOT NULL,
    description TEXT,
    picture BYTEA
);
CREATE TABLE IF NOT EXISTS customer_demographics (
    customer_type_id BPCHAR NOT NULL PRIMARY KEY,
    customer_desc TEXT
);
CREATE TABLE IF NOT EXISTS customer_customer_demo (
    customer_id BPCHAR NOT NULL,
    customer_type_id BPCHAR NOT NULL,
    PRIMARY KEY (customer_id, customer_type_id),
    FOREIGN KEY (customer_id) REFERENCES customers,
    FOREIGN KEY (customer_type_id) REFERENCES customer_demographics
);
CREATE TABLE IF NOT EXISTS territories (
    territory_id VARCHAR(20) NOT NULL PRIMARY KEY,
    territory_description BPCHAR NOT NULL,
    region_id SMALLINT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES region
);
CREATE TABLE IF NOT EXISTS employee_territories (
    employee_id SMALLINT NOT NULL,
    territory_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (employee_id, territory_id),
    FOREIGN KEY (employee_id) REFERENCES employees,
    FOREIGN KEY (territory_id) REFERENCES territories
);
CREATE TABLE IF NOT EXISTS products (
    product_id SMALLINT NOT NULL PRIMARY KEY,
    product_name VARCHAR(40) NOT NULL,
    supplier_id SMALLINT,
    category_id SMALLINT,
    quantity_per_unit VARCHAR(20),
    unit_price REAL,
    units_in_stock SMALLINT,
    units_on_order SMALLINT,
    reorder_level SMALLINT,
    discontinued INTEGER NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES suppliers,
    FOREIGN KEY (category_id) REFERENCES categories
);
CREATE TABLE IF NOT EXISTS orders (
    order_id SMALLINT NOT NULL PRIMARY KEY,
    customer_id BPCHAR,
    employee_id SMALLINT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    ship_via SMALLINT,
    freight REAL,
    ship_name VARCHAR(40),
    ship_address VARCHAR(60),
    ship_city VARCHAR(15),
    ship_region VARCHAR(15),
    ship_postal_code VARCHAR(10),
    ship_country VARCHAR(15),
    FOREIGN KEY (customer_id) REFERENCES customers,
    FOREIGN KEY (employee_id) REFERENCES employees,
    FOREIGN KEY (ship_via) REFERENCES shippers
);
CREATE TABLE IF NOT EXISTS order_details (
    order_id SMALLINT NOT NULL,
    product_id SMALLINT NOT NULL,
    unit_price REAL NOT NULL,
    quantity SMALLINT NOT NULL,
    discount REAL NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders,
    FOREIGN KEY (product_id) REFERENCES products
);