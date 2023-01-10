

use immobilier;

create table representant(
id_representant int primary key auto_increment not null,
nom_representant varchar(50) not null,
prenom_representant varchar(50) not null
)engine=innodb;

create table clients(
id_client int primary key auto_increment not null,
nom_client varchar(50) not null,
prenom_client varchar(50) not null,
adresse_client varchar(50) not null,
cp_client int not null,
ville_client varchar(50) not null
)engine=innodb;

create table appartement(
id_appartement int primary key auto_increment not null,
superficie_appartement float not null,
prix_appartement float not null,
secteur_appartement varchar(50) not null,
id_representant int not null,
id_client int not null
)engine=innodb;

alter table appartement
add constraint fk_representant_appartement
foreign key (id_representant)
references representant (id_representant);

alter table appartement
add constraint fk_client_appartement
foreign key (id_client)
references clients (id_client);

insert into clients(nom_client,prenom_client,adresse_client,cp_client,ville_client) values
("dupond","edward","rue martin",98510,"petaouchnok"),
("canta","bertrand","rue mozart",77220,"tournan en brie"),
("vinvent","missieur","rue space",95000,"la haut"),
("Button","benjamin","place clichy",93210,"clichy");

insert into representant(nom_representant,prenom_representant) values
("gates","bill"),
("munsk","ellon"),
("andré","patrick");

insert into appartement(superficie_appartement, prix_appartement, secteur_appartement, id_representant, id_client) values
(225,75000,"centre",2,1),
(60,40000,"centre",1,2),
(100,60000,"peripherie",3,3),
(400,1000000,"campagne",1,4);

select* from clients order by nom_client, prenom_client;

select secteur_appartement,avg(prix_appartement) as "moyenne prix de vente"
from appartement
group by secteur_appartement;

insert into appartement(superficie_appartement, prix_appartement, secteur_appartement, id_representant, id_client) values
(225,75000,"centre",2,1),
(60,40000,"centre",1,2),
(100,60000,"peripherie",3,3),
(400,1000000,"campagne",1,4),
(225,75000,"centre",2,1),
(60,40000,"centre",1,2),
(100,60000,"peripherie",3,3),
(400,1000000,"campagne",1,4),
(225,75000,"centre",2,1),
(60,40000,"centre",1,2),
(100,60000,"peripherie",3,3),
(400,1000000,"campagne",1,4),
(225,75000,"centre",2,1),
(60,40000,"centre",1,2),
(100,60000,"peripherie",3,3),
(400,1000000,"campagne",1,4),
(70,130000,"centre",2,1),
(200,3000000,"centre",1,2),
(160,450000,"peripherie",3,3),
(600,2000000,"campagne",1,4),
(225,75000,"centre",2,1),
(200,1500000,"centre",1,2),
(120,350000,"peripherie",3,3),
(370,860000,"campagne",1,4),
(210,200000,"centre",2,1),
(30,30000,"centre",1,2),
(80,70000,"peripherie",3,3),
(300,700000,"campagne",1,4);

select secteur_appartement, count(id_appartement) as "Nombre d'appartements"
from appartement
group by secteur_appartement
having count(id_appartement)>10;

select secteur_appartement, count(id_appartement) as "nombre d'appartements"
from appartement
where superficie_appartement>80
group by secteur_appartement;

select secteur_appartement, max(prix_appartement) as "prix maximal"
from appartement
group by secteur_appartement
having count(id_appartement)>10;

select clients.prenom_client, appartement.superficie_appartement from clients inner join appartement on clients.id_client=appartement.id_client;

select * from representant inner join appartement on representant.id_representant=appartement.id_representant
where representant.nom_representant="gates" and representant.prenom_representant="bill" and appartement.secteur_appartement="centre";

insert into clients(nom_client,prenom_client,adresse_client,cp_client,ville_client) values
("dupond","edward","rue martin",98510,"petaouchnok"),
("canta","bertrand","rue mozart",77220,"tournan en brie"),
("vinvent","missieur","rue space",95000,"la haut"),
("Button","benjamin","place clichy",93210,"clichy"),
("dupond","edward","rue martin",98510,"petaouchnok"),
("canta","bertrand","rue mozart",77220,"tournan en brie"),
("vinvent","missieur","rue space",95000,"la haut"),
("Button","benjamin","place clichy",93210,"clichy"),("dupond","edward","rue martin",98510,"petaouchnok"),
("canta","bertrand","rue mozart",77220,"tournan en brie"),
("vinvent","missieur","rue space",95000,"la haut"),
("Button","benjamin","place clichy",93210,"clichy");

select * from clients inner join appartement on clients.id_client=appartement.id_client
where clients.ville_client="clichy";

select appartement.secteur_appartement, count(clients.id_client) as "nombre de client par secteur"
from clients inner join appartement on clients.id_client=appartement.id_client
where clients.ville_client="tournan en brie"
group by secteur_appartement;