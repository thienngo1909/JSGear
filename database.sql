SHOW CREATE TABLE products;
SHOW CREATE TABLE producers;
SHOW CREATE TABLE category;
show create table productdetails;

select * from products;
select * from producers;
select * from category;
select * from productdetails;
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S001', 'Core Java', 100,10, now(),1,2);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S002', 'Core Java', 100,10, now(),1,2);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S003', 'Core Java', 100,10, now(),1,2);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S004', 'Core Java', 100,10, now(),1,2);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S005', 'Core Java', 100,10, now(),1,2);

INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S006', 'Core Java', 100,10, now(),2,1);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S007', 'Core Java', 100,10, now(),2,1);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S008', 'Core Java', 100,10, now(),2,1);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S009', 'Core Java', 100,10, now(),2,1);
INSERT INTO PRODUCTS (CODE, NAME, PRICE,Quantity, Create_Day,CATEGORY_ID,PRODUCER_ID)
VALUES ('S010', 'Core Java', 100,10, now(),2,1);

INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S001");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S002");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S003");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S004");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S005");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S006");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S007");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S008");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S009");
INSERT INTO productdetails (Insurance, Color, Weight, Specifications,PRODUCT_CODE)
VALUES ("abc","abc",30,"anc","S010");

INSERT INTO category (name)
VALUES ('MOUSE');

INSERT INTO category (name)
VALUES ('KEYBOAD');

INSERT INTO producers (name)
VALUES ('asus');

INSERT INTO producers (name)
VALUES ('gigabyte');

INSERT INTO roles (ID, Role_Name)
VALUES (1, 'SUPERADMIN');

INSERT INTO roles (ID, Role_Name)
VALUES (2, 'ADMIN');

INSERT INTO roles (ID, Role_Name)
VALUES (3, 'USER');