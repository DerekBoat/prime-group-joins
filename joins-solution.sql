  --Get all customers and their addresses.
 SELECT * FROM "customers" JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";
 
 --Get all orders and their line items (orders, quantity and product)
 SELECT * FROM "orders" JOIN "line_items" ON "orders"."id" = "line_items"."order_id" JOIN "products" ON "line_items"."product_id"="products"."id";
 
 --Which warehouses have cheetos?
SELECT * FROM "products" JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id" JOIN "warehouse" ON "warehouse_product"."warehouse_id"
="warehouse"."id" WHERE "products"."description" = 'cheetos';
 
 --Which warehouses have diet pepsi?
 SELECT * FROM "products" JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id" JOIN "warehouse" ON "warehouse_product"."warehouse_id"
="warehouse"."id" WHERE "products"."description" = 'diet pepsi';
