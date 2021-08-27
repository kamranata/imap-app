Создать проект на PHP c использованием любого Framework, который будет читать
последних 10 писем из Inbox почтового ящика по протоколу IMAP и показывать результат
в виде html таблицы (From,To,Subject,Date). Все настройки (адрес сервера, username,
password) должны храниться в конфигурационном файле или переменных окружения.
Можно использовать Docker/Docker compose для построения окружения




SQL:
Дана база данных:
CREATE TABLE Customers (
customer_id int NOT NULL PRIMARY KEY,
customer_name char(50) NOT NULL );
CREATE TABLE Orders (
order_id int NOT NULL PRIMARY KEY,
customer_id int NOT NULL,
order_date date NOT NULL );
CREATE TABLE Shipments (
shipment_id int NOT NULL PRIMARY KEY,
order_id int NOT NULL,
shipment_date date NOT NULL );

Написать SQL:
1. Вывести список customer_name и количество заказов
2. Вывести список customer_name у которых количество заказов больше 2
3. Вывести список customer_name у которых есть заказы без доставки и их количество
4. Вывести список дат и количество заказов в эти даты за последние 30 дней
Результат в файле queries.sql
