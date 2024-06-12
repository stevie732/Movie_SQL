
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    movie_id INT NOT NULL,
    showtime TIMESTAMP NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concessions (
    concession_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    item VARCHAR(100) NOT NULL,
    price DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    rating VARCHAR(5) NOT NULL
);

-- insert data into the tables.
INSERT INTO customers (first_name, last_name, email, phone_number)
VALUES ('John', 'Doe', '

', '123-456-7890'), ('Jane', 'Smith', '

', '234-567-8901'), ('Alice', 'Johnson', '

', '345-678-9012');

INSERT INTO movies (title, genre, rating)
VALUES ('The Matrix', 'Sci-Fi', 'R'), ('The Shawshank Redemption', 'Drama', 'R'), ('The Dark Knight', 'Action', 'PG-13');

INSERT INTO tickets (customer_id, movie_id, showtime)
VALUES (1, 1, '2021-10-01 19:00:00'), (2, 2, '2021-10-02 20:00:00'), (3, 3, '2021-10-03 21:00:00');

INSERT INTO concessions (customer_id, item, price)
VALUES (1, 'Popcorn', 5.00), (2, 'Soda', 3.00), (3, 'Candy', 2.00);

select *
from movies;