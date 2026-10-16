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

-- Partie 5
select
    s.id_serveur,
    s.nom_serveur,
    s.prenom_serveur,
    count(distinct c.id_commande) as nombre_commandes,
    coalesce(sum(pc.quantite * p.prix_plat), 0) as chiffre_affaires
from serveur s
left join commande c
    on c.id_serveur = s.id_serveur
left join plat_commande pc
    on pc.id_commande = c.id_commande
left join plat p
    on p.id_plat = pc.id_plat
group by s.id_serveur, s.nom_serveur, s.prenom_serveur;


