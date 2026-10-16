-- Les serveurs qui prennent les commandes.
create table serveur(
    id_serveur int primary key auto_increment,
    nom_serveur varchar(50) not null,
    prenom_serveur varchar(50) not null
);

insert into serveur(nom_serveur, prenom_serveur)
values ("Rakoto", "Njaka");
insert into serveur(nom_serveur, prenom_serveur)
values ("Rasoa", "Lalao");


create table table_salle(
    id_table_salle int primary key auto_increment,
    numero_table int not null unique
);

insert into table_salle(numero_table) values (1);
insert into table_salle(numero_table) values (2);
insert into table_salle(numero_table) values (3);
insert into table_salle(numero_table) values (4);
insert into table_salle(numero_table) values (5);
insert into table_salle(numero_table) values (6);
insert into table_salle(numero_table) values (7);
insert into table_salle(numero_table) values (8);

alter table commande add column id_serveur int not null;
alter table commande add column id_table_salle int null;

alter table commande
    add constraint fk_commande_serveur
    foreign key (id_serveur) references serveur(id_serveur);

alter table commande
    add constraint fk_commande_table_salle
    foreign key (id_table_salle) references table_salle(id_table_salle);


