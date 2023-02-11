
use ventEnLigne;

-- 0 creation des tables et associations
create table clients(
 id_client int primary key auto_increment not null,
 nom_client varchar(50) not null,
 adresse_client varchar(100) not null,
 tel_client varchar(10) not null 
 )engine=innodb;
 
create table commandes(
 id_commande int primary key auto_increment not null,
 date_commande date not null,
 id_client int not null )
 engine=innodb;

create table produits(
 id_produit int primary key auto_increment not null,
 nom_produit varchar(50) not null,
 description_produit varchar(50) not null,
 prix_produit int not null 
 )engine=innodb;

create table contenus(
 id_produit int not null,
 id_commande int not null,
 quantité_contenus int not null,
 primary key(id_produit, id_commande)
 )engine=innodb;

alter table commandes
 add constraint fk_client_commande
 foreign key(id_client) 
 references clients (id_client);

alter table contenus 
add constraint fk_produit_contenus 
foreign key (id_produit) 
references produits (id_produit);	

alter table contenus 
add constraint fk_commande_contenus 
foreign key (id_commande) 
references commandes (id_commande);	

-- insertion des données dans les tables
insert into clients (nom_client, adresse_client, tel_client) values 
("Benichou","Route de france 75000 Paris","0145785236"),
 ("Leroy","Rue Annette 64800 Nay","0568696362"),
 ("Amiel","rue de la joie 64800 Montaut","0548789612"),
 ("Gadrat","Route de Pau 65270 St pé de bigorre","0568148971"),
 ("Macron","L'elysé 75000 Paris","0156891478");

insert into commandes (date_commande, id_client) values
 ("2022-10-21",1),
 ("2022-08-02",2),
 ("2022-11-15",3),
 ("2022-05-14",4),
 ("2023-01-19",5);	

insert into produits (nom_produit, description_produit,prix_produit) values
 ("PS4","console sony",230),
 ("PS5","dernière console sony",545),
 ("NES","console vintage",150),
 ("Gameboy","console portable vintage",180),
 ("Switch","dernière console nintendo",260);	
 
 insert into contenus (id_produit, id_commande, quantité_contenus) values
(1,1,2),
(2,2,3),
(3,3,1),
(4,4,2),
(5,5,10);

-- 1 quels sont les produits présents dans la table 'produit' de la bdd ventEnLigne?
select nom_produit
from produits;

-- 2 Combien y a-t-il de commandes passées dans la table "Commandes" de la bdd ventEnLigne?
select count(*) 
from commandes;
-- ou 
select count(id_commande)
from commandes;

-- 3 Quels sont les clients qui ont passé une commande sur le site ventEnLigne?
select
distinct nom_client,
id_commande
from
clients
inner join commandes
on clients.id_client = commandes.id_client;

-- 4 Combien de produits ont été commandés dans la table "contenus" de la BDD ventEnLigne?
select commandes.id_commande, sum(contenus.quantité_contenus) as "nombre de produits commandés"
from commandes
inner join contenus on commandes.id_commande=contenus.id_commande;

-- 5 Quels sont les produits les plus commandés dans la table "contenus" de la BDD ventEnLigne?
select produits.nom_produit, max(contenus.quantité_contenus) as "produit le plus commandé"
from produits
inner join contenus on produits.id_produit=contenus.id_produit;


-- 6 Quel est le total des ventes pour chaque produit dans la table "contenus" de la BDD ventEnLigne?
select produits.nom_produit, sum(contenus.quantité_contenus) as "total des ventes pour chaque produit"
from produits
inner join contenus on produits.id_produit=contenus.id_produit
group by produits.id_produit;


-- 7 Quels sont les produits qui ont été commandés plus de 10 fois dans la BDD ventEnLigne?

-- modification des quantités pour respecter l'ennoncé 
update contenus
set quantité_contenus = 25
where id_produit and id_commande= 2;

-- question 7 
select produits.nom_produit as "les produits commandés plus de 10 fois"
from produits
inner join contenus on produits.id_produit=contenus.id_produit
where contenus.quantité_contenus > 10;








 
 