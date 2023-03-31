-- DDL (create table)
CREATE TABLE products(
  id SERIAL PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  quantity INT DEFAULT 0 NOT NULL
);

CREATE TABLE components(
  id SERIAL PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  description TEXT NOT NULL
);

CREATE TABLE suppliers(
  id SERIAL PRIMARY KEY,
  name VARCHAR(200) NOT NULL
);

CREATE TABLE products_components(
  product_id INT NOT NULL REFERENCES products (id) ON DELETE CASCADE,
  component_id INT NOT NULL REFERENCES components (id) ON DELETE CASCADE,
  UNIQUE (product_id, component_id)
);

CREATE TABLE component_suppliers(
    component_id INT NOT NULL REFERENCES components (id) ON DELETE CASCADE,
    supplier_id INT NOT NULL REFERENCES suppliers (id) ON DELETE CASCADE,
    UNIQUE (component_id, supplier_id)
);

-- DML (insert, update, dll)
INSERT INTO products(name, quantity) VALUES('HP', 20);
INSERT INTO products(name, quantity) VALUES('TABLET', 40);
INSERT INTO products(name, quantity) VALUES('LAPTOP', 30);
INSERT INTO products(name, quantity) VALUES('SMART WATCH', 35);
INSERT INTO products(name, quantity) VALUES('SAMRT TV', 25);

INSERT INTO components(name, description) VALUES('Chip HP', 'Chip HP');
INSERT INTO components(name, description) VALUES('Chip Tablet', 'Chip Tablet');
INSERT INTO components(name, description) VALUES('Processor Laptop', 'Processor Laptop');
INSERT INTO components(name, description) VALUES('Chip Smart Watch', 'Chip Smart Watch');
INSERT INTO components(name, description) VALUES('Chip Smart TV', 'Chip Smart TV');

INSERT INTO components(name, description) VALUES('Layar HP', 'Layar HP');
INSERT INTO components(name, description) VALUES('Layar Tablet', 'Layar Tablet');
INSERT INTO components(name, description) VALUES('Layar Laptop', 'Layar Laptop');
INSERT INTO components(name, description) VALUES('Layar Smart Watch', 'Layar Smart Watch');
INSERT INTO components(name, description) VALUES('Layar Smart TV', 'Layar Smart TV');

INSERT INTO components(name, description) VALUES('Baterai HP', 'Baterai HP');
INSERT INTO components(name, description) VALUES('Baterai Tablet', 'Baterai Tablet');
INSERT INTO components(name, description) VALUES('Baterai Laptop', 'Baterai Laptop');
INSERT INTO components(name, description) VALUES('Baterai Smart Watch', 'Baterai Smart Watch');

INSERT INTO components(name, description) VALUES('Speaker HP', 'Speaker HP');
INSERT INTO components(name, description) VALUES('Speaker Tablet', 'Speaker Tablet');
INSERT INTO components(name, description) VALUES('Speaker Laptop', 'Speaker Laptop');
INSERT INTO components(name, description) VALUES('Speaker Smart TV', 'Speaker Smart TV');

INSERT INTO components(name, description) VALUES('Camera HP', 'Camera HP');
INSERT INTO components(name, description) VALUES('Camera Tablet', 'Camera Tablet');
INSERT INTO components(name, description) VALUES('Camera Laptop', 'Camera Laptop');

INSERT INTO suppliers(name) VALUES('Pabrik Chip');
INSERT INTO suppliers(name) VALUES('Pabrik Procesor');
INSERT INTO suppliers(name) VALUES('Pabrik Layar 1');
INSERT INTO suppliers(name) VALUES('Pabrik Layar 2');
INSERT INTO suppliers(name) VALUES('Pabrik Baterai 1');
INSERT INTO suppliers(name) VALUES('Pabrik Baterai 2');
INSERT INTO suppliers(name) VALUES('Pabrik Speaker 1');
INSERT INTO suppliers(name) VALUES('Pabrik Speaker 2');
INSERT INTO suppliers(name) VALUES('Pabrik Camera 1');
INSERT INTO suppliers(name) VALUES('Pabrik Camera 2');

INSERT INTO component_suppliers(component_id, supplier_id) VALUES(1, 1);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(2, 1);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(3, 2);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(4, 1);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(5, 1);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(6, 3);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(6, 4);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(7, 4);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(8, 3);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(8, 4);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(9, 3);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(10, 3);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(10, 4);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(11, 5);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(12, 5);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(12, 6);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(13, 6);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(14, 5);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(14, 6);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(15, 7);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(15, 8);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(16, 7);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(16, 8);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(17, 8);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(18, 7);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(18, 8);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(19, 9);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(19, 10);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(20, 9);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(20, 10);
INSERT INTO component_suppliers(component_id, supplier_id) VALUES(21, 10);

INSERT INTO products_components(product_id, component_id) VALUES(1, 1);
INSERT INTO products_components(product_id, component_id) VALUES(1, 6);
INSERT INTO products_components(product_id, component_id) VALUES(1, 11);
INSERT INTO products_components(product_id, component_id) VALUES(1, 15);
INSERT INTO products_components(product_id, component_id) VALUES(1, 19);
INSERT INTO products_components(product_id, component_id) VALUES(2, 2);
INSERT INTO products_components(product_id, component_id) VALUES(2, 7);
INSERT INTO products_components(product_id, component_id) VALUES(2, 12);
INSERT INTO products_components(product_id, component_id) VALUES(2, 16);
INSERT INTO products_components(product_id, component_id) VALUES(2, 20);
INSERT INTO products_components(product_id, component_id) VALUES(3, 3);
INSERT INTO products_components(product_id, component_id) VALUES(3, 8);
INSERT INTO products_components(product_id, component_id) VALUES(3, 13);
INSERT INTO products_components(product_id, component_id) VALUES(3, 17);
INSERT INTO products_components(product_id, component_id) VALUES(3, 21);
INSERT INTO products_components(product_id, component_id) VALUES(4, 4);
INSERT INTO products_components(product_id, component_id) VALUES(4, 9);
INSERT INTO products_components(product_id, component_id) VALUES(4, 14);
INSERT INTO products_components(product_id, component_id) VALUES(5, 5);
INSERT INTO products_components(product_id, component_id) VALUES(5, 10);
INSERT INTO products_components(product_id, component_id) VALUES(5, 18);

select * from products;
select * from components;
select * from suppliers;
select * from products_components;
select * from component_suppliers;

SELECT *
FROM
    products p
    LEFT JOIN products_components pc on p.id = pc.product_id
    LEFT JOIN components c on pc.component_id = c.id
    LEFT JOIN component_suppliers cs on c.id = cs.component_id
    LEFT JOIN suppliers s on cs.supplier_id = s.id
WHERE p.id = 2;
