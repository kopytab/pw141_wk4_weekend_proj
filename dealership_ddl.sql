CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    car_year INTEGER,
    make VARCHAR,
    model VARCHAR,
    color VARCHAR,
    new_or_used VARCHAR
);

CREATE TABLE dealership_customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    phone_number INTEGER
);

CREATE TABLE salesmen(
    salesman_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE mechanics(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE service_center(
    service_id SERIAL PRIMARY KEY,
    service_type VARCHAR,
    mechanic_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    amount NUMERIC(8,2),
    inventory_id INTEGER,
    service_id INTEGER,
    mechanic_id INTEGER,
    salesman_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
    FOREIGN KEY (service_id) REFERENCES service_center(service_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    FOREIGN KEY (salesman_id) REFERENCES salesmen(salesman_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

ALTER TABLE service_center
DROP CONSTRAINT service_center_customer_id_fkey


SELECT constraint_name
FROM information_schema.table_constraints
WHERE table_name = 'service_center' AND constraint_type = 'FOREIGN KEY';

ALTER TABLE invoice
DROP CONSTRAINT invoice_customer_id_fkey

ALTER TABLE service_center
ADD FOREIGN KEY (customer_id) REFERENCES dealership_customers(customer_id)

ALTER TABLE invoice
ADD FOREIGN KEY (customer_id) REFERENCES dealership_customers(customer_id)