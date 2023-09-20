-- Inserting both roles
INSERT INTO roles (idrole, role) VALUES (1, 'ROLE_ADMIN'),(2, 'ROLE_USER');

-- Inserting users and admin user
INSERT INTO users (status, iduser, mail, password) VALUES (true, 1, 'admin@nesting.com', '$2a$12$yIi.e/Dv/aJC6D7KNjVz/O3JAenUSF2n0I/c52Tb3xq6SF1HsRcLW'),
(true,2,'user1@nesting.com', '$2a$12$Gb4yKjA1sAhh8TAWE2beTudwFrdYcX9osoYZzVyypiBnfiQDLGhV.'),(true,3,'user2@nesting.com','$2a$12$WYGHiNAszcko0FBf3cSj.epOR9W7acTgKNtfKyvyKYgBabGupkcNG');

 -- Inserting profiles of user1 and user2
INSERT INTO users_profiles (address, lastname, name,user_id) VALUES ('C/Admin', 'Admin', 'Admin',1), ('C/Address','Buzz','Fizz',2),('C/La plata', 'Foo', 'Jean',3);

-- Inserting relation into role_users
INSERT INTO roles_users (roles_id, user_id) VALUES (1,1),(2,2),(2,3);

INSERT INTO properties (title, description, city, postal_code, rooms, baths, size, price, type, status, house_type, publish_date,fk_user_profile_published)
VALUES ('Cozy Apartment in Downtown', 'A comfortable apartment with a great view.', 'New York', '10001', 2, 1, 800.0, 1500.0, 'Alquiler', true, 'Piso', '2023-09-12',2);

-- Inserting a property with user profiles
INSERT INTO properties (title, description, city, postal_code, rooms, baths, size, price, type, status, house_type, publish_date,fk_user_profile_published)
VALUES ('Spacious Family Home', 'Perfect for a family with kids.', 'Los Angeles', '90001', 3, 2, 2000.0, 350000.0, 'Venta', true, 'Casa', '2023-09-12',3);

-- Inserting a property with images
INSERT INTO properties (title, description, city, postal_code, rooms, baths, size, price, type, status, house_type, publish_date,fk_user_profile_published)
VALUES ('Luxury Villa with Pool', 'A luxurious villa with a private pool.', 'Miami', '33101', 4, 4, 3000.0, 750000.0, 'Venta', true, 'Casa', '2023-09-12',2);

-- Inserting a property with both user profiles and images
INSERT INTO properties (title, description, city, postal_code, rooms, baths, size, price, type, status, house_type, publish_date,fk_user_profile_published)
VALUES ('Modern Loft in the Arts District', 'An artistic loft in a vibrant neighborhood.', 'Los Angeles', '90002', 1, 1, 1000.0, 200000.0, 'Venta', true, 'Piso', '2023-09-12',3);

-- Inserting a property with default modification date
INSERT INTO properties (title, description, city, postal_code, rooms, baths, size, price, type, status, house_type, publish_date,fk_user_profile_published)
VALUES ('Country Cottage', 'A charming cottage in the countryside.', 'Countryside', '12345', 2, 1, 1200.0, 1200.0, 'Alquiler', true, 'Casa', '2023-09-12',3);


-- Inserting propertie's images
INSERT INTO images (id, properties_id, img) VALUES (1,1,'/img1.jpg'), (2,1,'/img2.jpg'),(3,1,'/img3.jpg'),(4,2,'/img1.jpg'), (5,2,'/img2.jpg'),(6,2,'/img3.jpg'),
(7,3,'/img1.jpg'), (8,3,'/img2.jpg'),(9,3,'/img3.jpg');