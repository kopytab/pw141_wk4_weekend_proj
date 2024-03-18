INSERT INTO inventory(
    inventory_id,
    car_year,
    make,
    model,
    color,
    new_or_used
) VALUES (
    1,
    2024,
    'Nissan',
    'Z',
    'Black',
    'New'
);

INSERT INTO inventory(
    inventory_id,
    car_year,
    make,
    model,
    color,
    new_or_used
) VALUES (
    2,
    2019,
    'Maseratti',
    'Ghibli',
    'White',
    'Used'
);


INSERT INTO dealership_customers(
    customer_id,
    first_name,
    last_name,
    phone_number
)VALUES(
    1,
    'Dave',
    'Jones',
    2035557394
);

INSERT INTO dealership_customers(
    customer_id,
    first_name,
    last_name,
    phone_number
)VALUES(
    2,
    'Michael',
    'Smith',
    1595559364
);

INSERT INTO salesmen(
    salesman_id,
    first_name,
    last_name
)VALUES(
    1,
    'Gianpiero',
    'Lambiase'
);

INSERT INTO salesmen(
    salesman_id,
    first_name,
    last_name
)VALUES(
    2,
    'Gunter',
    'Stiener'
);


INSERT INTO mechanics(
    mechanic_id,
    first_name,
    last_name
)VALUES(
    1,
    'Steven',
    'Miller'
);

INSERT INTO mechanics(
    mechanic_id,
    first_name,
    last_name
)VALUES(
    2,
    'Tim',
    'Lawrence'
);

INSERT INTO service_center(
    service_id,
    service_type,
    mechanic_id,
    customer_id
)VALUES(
    1,
    'Oil Change',
    2,
    1
);

INSERT INTO service_center(
    service_id,
    service_type,
    mechanic_id,
    customer_id
)VALUES(
    2,
    'Tire Repair',
    1,
    2
);


INSERT INTO invoice(
    invoice_id,
    amount,
    inventory_id,
    service_id,
    mechanic_id,
    salesman_id,
    customer_id
)VALUES(
    1,
    70000,
    1,
    null,
    null,
    1,
    2
)

INSERT INTO invoice(
    invoice_id,
    amount,
    inventory_id,
    service_id,
    mechanic_id,
    salesman_id,
    customer_id
)VALUES(
    2,
    60,
    null,
    1,
    1,
    null,
    2
)

INSERT INTO invoice(
    invoice_id,
    amount,
    inventory_id,
    service_id,
    mechanic_id,
    salesman_id,
    customer_id
)VALUES(
    3,
    35080,
    2,
    2,
    2,
    2,
    2
)