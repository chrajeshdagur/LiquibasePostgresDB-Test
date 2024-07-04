--liquibase formatted sql

--changeset kumar:011 context:DEV lables=2.2,testdev
--comment: create_example_table
CREATE TABLE example_table_002 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

--changeset Kumar:022 context:SIT lables=DemoTest-2.0
--comment: insert_initial_data
INSERT INTO example_table_002 (name) VALUES ('example1'), ('example2');
