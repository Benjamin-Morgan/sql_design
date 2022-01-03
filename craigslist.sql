DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE regions
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE posts
(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    text TEXT NOT NULL,
    location TEXT NOT NULL,
    user_id INTEGER REFERENCES users,
    region_id INTEGER REFERENCES region
);

CREATE users
(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    encrypted_password TEXT NOT NULL,
    pref_region_id INTEGER REFERENCES region
);

CREATE categories
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);