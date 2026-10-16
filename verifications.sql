-- Etape 1: les plats du plus cher au moins cher
SELECT nom, prix
FROM plat
ORDER BY prix DESC;

-- Etape 2: ranger par categorie
SELECT 
    c.libelle AS categorie, 
    COUNT(p.id) AS nombre_de_plats
FROM categorie c
LEFT JOIN plat p ON c.id = p.id_categorie
GROUP BY c.id, c.libelle;