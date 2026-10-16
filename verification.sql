-- Partie 1
select * from plat order by prix_plat desc;

-- Partie 2
select * from plat.nom_plat, plat.prix_plat, categorie.nom_categorie
from plat left join categorie on plat.categorie = categorie.id_categorie;

-- Partie 3
select sum(plat.prix_plat * plat_commande.quantite) as total
from plat_commande 
join plat on plat.id_plat = plat_commande.id_plat 
group by id_commande;

-- Partie 4
select * from commande c
left join clients cl on c.id_client = cl.id_client


