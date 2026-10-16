create table clients(
    id_client int primary key auto_increment,
    nom_client varchar(50) not null,
    prenom_client varchar(50),
    email_client varchar(100),
    telephone_client varchar(15)
);

insert into clients(nom_client, prenom_client) values("Rakoto", "Jean");
alter table commande add column id_client int;
alter table commande add constraint fk_client foreign key (id_client) references clients(id_client);

CREATE PROCEDURE afficher_client_commande (
    p_id_commande IN commande.id_commande%TYPE
)
IS
    v_client VARCHAR2(150);
BEGIN
    SELECT CASE
               WHEN c.id_client IS NULL THEN 'client de passage'
               ELSE c.nom_client || ' ' || NVL(c.prenom_client, '')
           END
    INTO v_client
    FROM commande co
    LEFT JOIN clients c
        ON c.id_client = co.id_client
    WHERE co.id_commande = p_id_commande;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Commande inexistante');
END;
/