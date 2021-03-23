SELECT * from celebs

CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER,
);

INSERT INTO celebs(id, name, age)
VALUES(2, 'Beyonce', 23)


ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

UPDATE celebs 
SET twitter_handle = '@taylorSwift'
WHERE id = 4;

DELETE FROM celebs
WHERE twitter_handle is NULL; 

CREATE TABLE celebs( 
    id INTEGER, 
    name TEXT unique, 
    date_of_birth TEXT NOT NULL, 
    date_of_birth TEXT DEFAULT 'Not Applicable', 
);