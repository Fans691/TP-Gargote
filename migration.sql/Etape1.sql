create database GRado;

create table plat(
    id_plat int primary key auto_increment,
    nom_plat varchar(50) not null,
    prix_plat decimal(5,2) not null,
    categorie varchar(50) 
);

insert into plat(nom_plat, categorie ,prix_plat) values("Romazava", 1,7000);
insert into plat(nom_plat, categorie ,prix_plat) values("Ravitoto sy Henakisoa", 1,8000);
insert into plat(nom_plat, categorie ,prix_plat) values("Akoho sy voanio", 1,8500);
insert into plat(nom_plat, categorie ,prix_plat) values("Mi sao", 1,6000);
insert into plat(nom_plat, categorie ,prix_plat) values("Soupe chinoise", 2,5000);
insert into plat(nom_plat, categorie ,prix_plat) values("Mofo gasy (les 4)", 3,1000);
insert into plat(nom_plat, categorie ,prix_plat) values("Ranonápamgo", 4,500);





