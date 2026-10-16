create database GRado;

create table plat(
    id_plat int primary key auto_increment,
    nom_plat varchar(50) not null,
    prix_plat decimal(5,2) not null,
    categorie varchar(50) 
);


