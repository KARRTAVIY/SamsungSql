CREATE TABLE Stor
(
 countity int,
 s_id int FOREIGN KEY REFERENCES Storages(s_id),
 b_id int FOREIGN KEY REFERENCES Books(b_id)
);
CREATE TABLE Books
(
 b_id int PRIMARY KEY,
 b_call text,
 b_author text,
 b_publ text,
 b_year int,
 b_price int,
 b_feature int
);
CREATE TABLE Storages
(
 s_id PRIMARY KEY,
 head_name text,
 s_adresse text,
 s_phone int,
 s_capacity int
);
CREATE TABLE Used_Books
(
 discipline text,
 b_id int FOREIGN KEY REFERENCES Books(b_id),
 f_id int FOREIGN KEY REFERENCES Facult(f_id)
);
CREATE TABLE Facult
(f_id int PRIMARY KEY,
 f_call text,
 decan text,
 base_date int,
)
