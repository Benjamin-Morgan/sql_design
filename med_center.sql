DROP DATABASE IF EXISTS med_center;

CREATE DATABASE med_center;

\c med_center

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT NOT NULL
);

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    insurance TEXT,
    birthday date, 
);

CREATE TABLE visits 
(
    id SERIAL PRIMARY KEY, 
    doctor_id INTEGER REFERENCES patients, 
    patients_id INTEGER REFERENCES doctors
    date DATE
);

CREATE TABLE diseases
(
    id SERIAL PRIMARY KEY
    name TEXT NOT NULL,
    description TEXT,
);

CREATE TABLE diagnoses
(
    id SERIAL PRIMARY KEY,
    visit_id INTEGER REFERENCES visits,
    disease_id INTEGER REFERENCES diseases
    note TEXT
);