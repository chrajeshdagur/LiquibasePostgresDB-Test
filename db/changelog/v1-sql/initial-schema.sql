--liquibase formatted sql

--changeset kumar:001 context:DEV lables=2.2,testdev
--comment: create_example_table
CREATE TABLE example_table_001 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

--changeset Kumar:002 context:SIT lables=DemoTest-2.0
--comment: insert_initial_data
INSERT INTO example_table_001 (name) VALUES ('example1'), ('example2');

--changeset Kumar:003 context:Prd lables=DemoTest
--comment: insert_data_test
INSERT INTO example_table_001 (name) VALUES ('example3'), ('example4');


--changeset Kumar:004 context:DEV lables=2.0
--comment: insert_data_test 5 6
INSERT INTO example_table_001 (name) VALUES ('example5'), ('example6');


