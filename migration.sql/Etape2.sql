create table categorie(
    id_categorie int primary key auto_increment,
    nom_categorie varchar(50) not null
);

create table plat(
    id_plat int primary key auto_increment,
    nom_plat varchar(50) not null,
    prix_plat decimal(5,2) not null,
    categorie int not null
);

alter table plat drop column categorie;
ALTER TABLE plat ADD categorie int not null;
ALTER TABLE plat ADD CONSTRAINT fk_categorie FOREIGN KEY (categorie) REFERENCES categorie(id_categorie);

insert into plat(nom_plat, categorie ,prix_plat) values("Romazava", 1,7000);
insert into plat(nom_plat, categorie ,prix_plat) values("Ravitoto sy Henakisoa", 1,8000);
insert into plat(nom_plat, categorie ,prix_plat) values("Akoho sy voanio", 1,8500);
insert into plat(nom_plat, categorie ,prix_plat) values("Mi sao", 2,6000);
insert into plat(nom_plat, categorie ,prix_plat) values("Soupe chinoise", 3,5000);
insert into plat(nom_plat, categorie ,prix_plat) values("Mofo gasy (les 4)", 4,1000);
insert into plat(nom_plat, categorie ,prix_plat) values("Ranon'apamgo", 5,500);

insert into categorie(nom_categorie) values("Plat Malagasy");
insert into categorie(nom_categorie) values("Plat chinois");
insert into categorie(nom_categorie) values("Soupe");
insert into categorie(nom_categorie) values("Dessert et gouter");
insert into categorie(nom_categorie) values("Boisson");
