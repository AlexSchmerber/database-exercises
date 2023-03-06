USE ymir_alex;

# alter table `ads`
#     add constraint `users_id_fk`
#         foreign key (`user_id`) references users (`id`);

INSERT INTO users (id, name, email, role_id, password)
VALUES (id, 'Alex Schmerber', 'schmerb@gmail.com', role_id, '12356678');

INSERT INTO users (id, name, email, role_id, password)
VALUES (id, 'Shawn Hardin', 'shard@gmail.com', role_id, '960001');

INSERT INTO users (id, name, email, role_id, password)
VALUES (id, 'Matty Ice', 'icemat@yahoo.com', role_id, '82828288282822');

INSERT INTO users (id, name, email, role_id, password)
VALUES (id, 'Joey Schmoey', 'schmoeyjoey@gmail.com', role_id, '5757');

INSERT INTO categories (title, id)
VALUES ('Kitchen', id);

INSERT INTO categories (title, id)
VALUES ('Yard', id);

INSERT INTO categories (title, id)
VALUES ('Furniture', id);

INSERT INTO categories (title, id)
VALUES ('Appliance', id);

INSERT INTO categories (title, id)
VALUES ('Other', id);

SELECT u.email
FROM ads as a
INNER JOIN users u on a.user_id = u.id
WHERE u.id =8;

SELECT c.title
FROM ads as a
INNER JOIN ad_category ac on a.id = ac.ad_id
INNER JOIN categories c on ac.category_id = c.id
WHERE a.id = 2;

SELECT a.title, a.description
FROM categories as c
INNER JOIN ad_category ac on c.id = ac.category_id
INNER JOIN ads a on ac.ad_id = a.id
WHERE c.id = 4;

SELECT a.*
FROM users u
INNER JOIN ads a on u.id = a.user_id
WHERE u.id = 8;