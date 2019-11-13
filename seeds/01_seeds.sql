DELETE FROM users;
ALTER SEQUENCE users_id_seq RESTART WITH 1;
DELETE FROM properties;
ALTER SEQUENCE properties_id_seq RESTART WITH 1;
DELETE FROM reservations;
ALTER SEQUENCE reservations_id_seq RESTART WITH 1;
DELETE FROM property_reviews;
ALTER SEQUENCE property_reviews_id_seq RESTART WITH 1;


INSERT INTO users (name, email, password)
VALUES ('Eva Stanley', 'email1@email.com', ' $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Louisa Meyer', 'email2@email.com', ' $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Dominic Parks', 'email3@email.com', ' $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Speed Lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930, 6, 4, 8, 'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', 28142, true),
(2, 'Blank Corner', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 150, 2, 3, 3, 'Canada', '536 Namsub Avenue', 'Little', 'Quebec', 28142, true),
(2, 'Habit Mix', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 2000, 5, 10, 15, 'Canada', '1 Fancy Way', 'Big', 'Ontario', 35142, true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-03-13', '2018-03-15', 1, 3),
('2018-09-13', '2018-09-15', 2, 3),
('2019-05-20', '2019-06-02', 3, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (3, 1, 1, 5, 'message'),
(3, 2, 2, 2, 'message'),
(3, 3, 3, 1, 'message');