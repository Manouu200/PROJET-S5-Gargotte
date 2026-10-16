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

-- Etape 3: enregistrement des commandes et calcul du montant total
SELECT 
    c.id AS id_commande,
    c.ref AS reference_commande,
    SUM(pc.quantite * p.prix) AS montant_total
FROM commande c
JOIN plat_commande pc ON c.id = pc.id_commande
JOIN plat p ON pc.id_plat = p.id
GROUP BY c.id, c.ref
ORDER BY c.id;