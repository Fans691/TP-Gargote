create table commande(
    id_commande int primary key auto_increment,
    date_commande date not null
);

create table plat_commande(
    id_plat_commande int primary key auto_increment,
    id_plat int not null,
    id_commande int not null,
    quantite int not null,
    primary key(id_plat, id_commande),
    foreign key(id_plat) references plat(id_plat),
    foreign key(id_commande) references commande(id_commande)
);



