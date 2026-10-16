CREATE TABLE commande(
    id SERIAL PRIMARY KEY,
    date_commande DATE NOT NULL,
    ref VARCHAR(255) NOT NULL
);

INSERT INTO commande (date_commande, ref) VALUES
    ('2026-06-01', 'CMD-001'),
    ('2026-06-01', 'CMD-002'),
    ('2026-06-02', 'CMD-003'),
    ('2026-06-03', 'CMD-004'),
    ('2026-06-03', 'CMD-005');

CREATE TABLE plat_commande(
    id_commande INT,
    id_plat INT,
    quantite INT NOT NULL,

    PRIMARY KEY(id_commande, id_plat),

    CONSTRAINT fk_plat FOREIGN KEY(id_commande) REFERENCES commande(id),
    CONSTRAINT fk_commande FOREIGN KEY(id_plat) REFERENCES plat(id)
); 

INSERT INTO plat_commande (id_commande, id_plat, quantite) VALUES
    (1, 1, 2),
    (1, 2, 1),
    (2, 3, 3),
    (3, 4, 1),
    (3, 5, 2),
    (4, 6, 4),
    (5, 7, 5);