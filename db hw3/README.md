# HW2. Основные операторы PostgreSQL.
### Студент: Яськова Марина Андреевна
Пошаговое решение со скриншотами представлено ниже.
## 1. Создание таблиц
```
create table customer_hw3 (
	customer_id int4,
	first_name varchar(50),
	last_name varchar(50),
	gender varchar(30),
	dob varchar(50),
	job_title varchar(50),
	job_industry_category varchar(50),
	wealth_segment varchar(50),
	deceased_indicator varchar(50),
	owns_car varchar(30),
	address varchar(50),
	postcode varchar(30),
	state varchar(30),
	country varchar(30),
	property_valuation int4
);

create table transaction_hw3 (
	transaction_id int4,
	product_id int4,
	customer_id int4,
	transaction_date varchar(30),
	online_order varchar(30),
	order_status varchar(30),
	brand varchar(30),
	product_line varchar(30),
	product_class varchar(30),
	product_size varchar(30),
	list_price float4,
	standard_cost float4
); 
```
