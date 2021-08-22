select product_url from products

INSERT INTO reviews (product_id, name, content, rating, submit_date) 
VALUES ((select product_id from products where product_url = 'new-jacket-man' limit 1 ),'my name','my content',5,NOW())

select * from reviews



select product_id from products where product_url = 'new-jacket-man' limit 1