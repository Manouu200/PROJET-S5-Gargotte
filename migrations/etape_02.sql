CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(255) NOT NULL
);

INSERT INTO categorie (libelle) VALUES
    ('Plat malagasy'),
    ('Plat chinois'),
    ('Soupe'),
    ('Desserts'),
    ('Boisson');

ALTER TABLE plat 
ADD COLUMN id_categorie INT,
ADD CONSTRAINT fk_categorie_plat
    FOREIGN KEY (id_categorie)
    REFERENCES categorie(id);
UPDATE plat AS t
SET id_categorie = v.categorie_id
FROM (
    VALUES
        (1, 1), 
        (2, 1), 
        (3, 1),
        (4, 2), 
        (5, 3),
        (6, 4), 
        (7, 5) 
) AS v(plat_id, categorie_id)
WHERE t.id = v.plat_id;
       