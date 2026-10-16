# Schéma relationnel

<big>plat(**id**, nom, prix, #id_categorie)</big>

- prix: INT
- identifiant : id

<big>categorie(**id**, libelle)</big>

- on ajoute pas simplement une colonne categorie VARCHAR(50) car cela cause la redondance et augmente les risques d'erreurs de saisie humaine
- exemple: "Min sao" au lieu de "Mi sao"

<big>commande(**id**, date_commande, ref)</big><br>
<big>plat_commande(**#id_plat**, **#id_commande**, quantite)</big>

- je place la quantite dans plat_commande
