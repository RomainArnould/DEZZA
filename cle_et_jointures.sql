CREATE TABLE categories (
id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom VARCHAR(150) NOT NULL UNIQUE,
);

insert into categories (nom) values
    ('dessert'),
    ('plats principaux'),
    ('entrees'),
    ('boissons');

CREATE TABLE recettes (
id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom VARCHAR(150) NOT NULL UNIQUE,
description TEXT NOT NULL,
category_id INTEGER
FOREIN KEY (category_id) REFERENCES categories(id) ON DELETE
);

insert into recettes (nom,description) values 
    ('Tarte aux pommes', 'Une délicieuse tarte aux pommes',1),
    ('Spaghetti bolognaise', 'Un plat traditionnel italien',2),
    ('Salade de fruits', 'Une salade rafraîchissante pour l été',1);

