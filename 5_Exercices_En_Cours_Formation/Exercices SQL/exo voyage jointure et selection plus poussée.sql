create database `voyage`;

use voyage;

CREATE TABLE Clients(
id_Client int PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_Client varchar(30) NOT NULL,
prenom_Client varchar(30) NOT NULL,
tel_Client char(10) NOT NULL ,
adresse_Client varchar(50) NOT NULL,
codepostal_Client char(5) NOT NULL,
UNIQUE (tel_Client)
)engine=InnoDB;

create table circuit(
id_circuit int PRIMARY KEY AUTO_INCREMENT NOT NULL,
destination_circuit varchar(30) not null,
duree_circuit float not null
)engine=innodb;

create table voyage(
id_voyage int PRIMARY KEY AUTO_INCREMENT NOT NULL,
date_voyage date not null,
prix_voyage float not null,
nbplacemax_voyage int not null,
id_circuit int not null
)engine=innodb;

create table inscription(
id_client int not null,
id_voyage int not null,
date_inscription date not null,
primary key (id_client, id_voyage)
)engine=innodb;

alter table inscription
add constraint fk_inscription_client
foreign key (id_client)
references clients (id_client);

alter table inscription
add constraint fk_inscription_voyage
foreign key (id_voyage)
references voyage (id_voyage);

alter table voyage
add constraint fk_voyage_circuit
foreign key (id_circuit)
references circuit (id_circuit);

insert into clients (nom_client,prenom_client,tel_client,adresse_client,codepostal_client) values
("Casagrande", "Léa", "0618564413", "3 rue de la colombette", "31000"),
("Grande", "Maria", "0629564413", "avenue de strasbourg", "65000"),
("Mourgues", "Aurélie", "0745964413", "11 rue de la gare", "81000"),
("Avenel", "Bernard", "", "5 rue voltaire", "65310");

insert into circuit (destination_circuit,duree_circuit) values
("Ile Maurice", 10),
("San-Francisco", 9),
("Londres", 1),
("Amsterdam", 2);

insert into voyage (date_voyage,prix_voyage,nbplacemax_voyage,id_circuit) values
("2023-01-02", 1200, 250, 1),
("2023-01-05", 1000, 200, 2),
("2023-02-10", 980, 320, 3),
("2023-01-08", 2500, 400, 4);

insert into inscription (id_client,id_voyage,date_inscription) values
(1, 5, "2023-01-12"),
(2, 7, "2023-01-20"),
(3, 8, "2023-02-21");

-- exercice 3 nombre d'inscription entre 2 dates
select date_inscription, count(id_client) as "inscription entre les dates"
from inscription
where date_inscription between "2023-01-01" and "2023-01-30";

-- exercice 4 lier 4 tables pour afficher les colonnes qui nous interesse
select 
clients.id_client,
clients.nom_client, 
voyage.id_voyage,
voyage.prix_voyage,
voyage.date_voyage,
circuit.destination_circuit,
circuit.duree_circuit,
inscription.date_inscription
from clients
inner join inscription on clients.id_client=inscription.id_client 
inner join voyage on inscription.id_voyage=voyage.id_voyage 
inner join circuit on voyage.id_circuit=circuit.id_circuit;
;
-- exercice 5 afficher pour chaque voyage le nombre de place libre restantes
select
voyage.id_voyage,
voyage.nbplacemax_voyage - count(inscription.id_client) as "nombre de places restantes"
from voyage
inner join inscription on voyage.id_voyage=inscription.id_voyage
group by voyage.id_voyage;

-- exercice 6  afficher le montant total payé pour chaque voyageur (nom) pour tous les voyages
select
clients.id_client,
clients.nom_client, sum(voyage.prix_voyage) as "montant total par voyageurs"
from clients
inner join inscription on clients.id_client=inscription.id_client 
inner join voyage on inscription.id_voyage=voyage.id_voyage
group by clients.id_client;

-- exercice 7 diminuer le prix de 10% et augmenter le nombre de place de 20%
update voyage
set prix_voyage=prix_voyage *(0.9),
nbplacemax_voyage=nbplacemax_voyage *(1.20)
where id_voyage in
(
select
voyage.id_voyage
from
inscription
inner join voyage on inscription.id_voyage=voyage.id_voyage
group by
voyage.id_voyage
having
count(id_client)=voyage.nbplacemax_voyage
);


-- exercice 8 supprimer les clients qui ne sont pas inscrit dans un voyage depuis 3 ans

delete from clients
where id_client in
(
select id_client
from inscrire
WHERE datediff(CURDATE(), inscription.date_inscription) > 365*3
);


 
