CREATE TABLE transaction (
  "transaction_id" integer PRIMARY KEY,
  "item_id" integer,
  "customer_id" integer,
  "transaction_date" timestamp,
  "online_order" bool,
  "order_status" varchar(10),
  "list_price" float
);

CREATE TABLE item (
  "item_id" integer PRIMARY KEY,
  "product_id" integer,
  "brand" varchar,
  "product_line" varchar(10),
  "product_class" varchar(10),
  "product_size" varchar(10),
  "standard_cost" float
);

CREATE TABLE customer (
  "customer_id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "gender" varchar(10),
  "birth_date" timestamp,
  "job_title" varchar,
  "job_industry_category" varchar,
  "wealth_segment" varchar(20),
  "deceased_indicator" bool,
  "owns_car" bool,
  "address" varchar,
  "postcode" integer,
  "property_valuation" integer
);

CREATE TABLE region (
  "postcode" integer PRIMARY KEY,
  "state" varchar(5),
  "country" varchar(20)
);

ALTER TABLE customer ADD FOREIGN KEY ("postcode") REFERENCES region ("postcode");
ALTER TABLE transaction ADD FOREIGN KEY ("item_id") REFERENCES item ("item_id");
ALTER TABLE transaction ADD FOREIGN KEY ("customer_id") REFERENCES customer ("customer_id");



