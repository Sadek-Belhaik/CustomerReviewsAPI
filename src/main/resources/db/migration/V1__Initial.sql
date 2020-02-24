CREATE TABLE product
(
	id INT unsigned NOT NULL AUTO_INCREMENT,
	name VARCHAR(150) NOT NULL,
	description VARCHAR(300) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE review
(
	id INT unsigned NOT NULL AUTO_INCREMENT,
	product_id INT unsigned NOT NULL,
	title VARCHAR(150) NOT NULL,
	text VARCHAR(300) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE
);

CREATE TABLE comment
(
	id INT unsigned NOT NULL AUTO_INCREMENT,
	review_id INT unsigned NOT NULL,
	text VARCHAR(300) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (review_id) REFERENCES review(id) ON DELETE CASCADE
);

INSERT INTO product(name, description) VALUES('Minecraft', 'Greatest sandbox game ever made!');
INSERT INTO product(name, description) VALUES('Stardew Valley', 'Live your life as a farmer!');
INSERT INTO product(name, description) VALUES('Starbound', 'Explore the stars!');
INSERT INTO product(name, description) VALUES('Space Engine', 'Explore the universe in this science based space simulator!');
INSERT INTO product(name, description) VALUES('Age of Empires II', 'Classic RTS gameplay.');

INSERT INTO review(title, text, product_id) VALUES('Great game!', 'One of my favorite games ever!', 1);
INSERT INTO review(title, text, product_id) VALUES('Awesome.', 'Coolest simulator ever.', 4);

INSERT INTO comment(text, review_id) VALUES('This is also my favorite simulator. Even better than Farm Simulator!', 2);