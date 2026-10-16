-- Partie 1
select * from plat order by prix_plat desc;

-- Partie 2
select * from plat.nom_plat, plat.prix_plat, categorie.nom_categorie
from plat left join categorie on plat.categorie = categorie.id_categorie;
