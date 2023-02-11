-- creation de la base de données collier_gps
CREATE DATABASE collier_gps;
USE collier_gps;
-- creation de la table commentaire
CREATE TABLE commentaire(
id_commentaire INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
date_commentaire DATETIME NOT NULL,
commentaire_commentaire TEXT NOT NULL,
id_clients INT NOT NULL,
id_produits INT NOT NULL
)engine=InnoDB;
-- creation de la table produits
CREATE TABLE produits(
id_produits INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_produits VARCHAR(50) NOT NULL,
prix_produits FLOAT NOT NULL,
description_produits TEXT NOT NULL,
id_categories INT NOT NULL
)engine=InnoDB;
-- creation de la table animal
CREATE TABLE animal(
id_animal INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
description_animal TEXT NOT NULL
)engine=InnoDB;
-- creation de la table categories
CREATE TABLE categories(
id_categories INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_categories VARCHAR(50) NOT NULL
)engine=InnoDB;
-- creation de la table note
CREATE TABLE note(
id_note INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre_note FLOAT NOT NULL,
id_produits INT NOT NULL,
id_clients INT NOT NULL
)engine=InnoDB;
-- creation de la table roles
CREATE TABLE roles(
id_roles INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_roles VARCHAR(50) NOT NULL
)engine=InnoDB;
-- creation de la table clients
CREATE TABLE clients(
id_clients INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_clients VARCHAR(50) NOT NULL,
prenom_clients VARCHAR(50) NOT NULL,
mail_clients VARCHAR(50) NOT NULL,
mdp_clients VARCHAR(50) NOT NULL,
numero_rue_clients INT NOT NULL,
nom_rue_clients VARCHAR(50) NOT NULL,
cp_clients INT NOT NULL,
nom_ville_clients VARCHAR(50),
telephone_clients VARCHAR(50),
id_roles INT NOT NULL
)engine=InnoDB;
-- creation de la table article
CREATE TABLE article(
id_article INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_article VARCHAR(50) NOT NULL,
contenu_article TEXT NOT NULL,
id_produits INT NOT NULL
)engine=InnoDB;
-- creation de la table association commander
CREATE TABLE commander(
id_produits INT NOT NULL,
id_clients INT NOT NULL,
quantite_commander INT NOT NULL,
date_commander DATETIME NOT NULL,
PRIMARY KEY(id_produits, id_clients)
)engine=InnoDB;
-- creation de la table association relier
CREATE TABLE relier(
id_produits INT NOT NULL,
id_animal INT NOT NULL,
num_serie VARCHAR(50) NOT NULL,
geocalisation_produits VARCHAR(100) NOT NULL,
PRIMARY KEY(id_produits, id_animal)
)engine=InnoDB;
-- ajout des contraintes foreign key commentaire
ALTER TABLE commentaire
ADD CONSTRAINT fk_ecrire_clients
FOREIGN KEY(id_clients)
REFERENCES clients(id_clients);

ALTER TABLE commentaire
ADD CONSTRAINT fk_contenir_produits
FOREIGN KEY(id_produits)
REFERENCES produits(id_produits);

-- ajout des contraintes foreign key produits
ALTER TABLE produits
ADD CONSTRAINT fk_appartenir_categories
FOREIGN KEY(id_categories)
REFERENCES categories(id_categories);

-- ajout des contraintes foreign key note
ALTER TABLE note
ADD CONSTRAINT fk_associer_produits
FOREIGN KEY(id_produits)
REFERENCES produits(id_produits);

ALTER TABLE note
ADD CONSTRAINT fk_donner_clients
FOREIGN KEY(id_clients)
REFERENCES clients(id_clients);

-- ajout des contraintes foreign key article
ALTER TABLE article
ADD CONSTRAINT fk_detailler_produits
FOREIGN KEY(id_produits)
REFERENCES produits(id_produits);

-- ajout des contraintes foreign key clients
ALTER TABLE clients
ADD CONSTRAINT fk_posseder_roles
FOREIGN KEY(id_roles)
REFERENCES roles(id_roles);

-- ajout des contraintes foreign key relier
ALTER TABLE relier
ADD CONSTRAINT fk_relier_animal
FOREIGN KEY(id_animal)
REFERENCES animal(id_animal);

ALTER TABLE relier
ADD CONSTRAINT fk_relier_produits
FOREIGN KEY(id_produits)
REFERENCES produits(id_produits);

-- ajout des contraintes foreign key commander
ALTER TABLE commander
ADD CONSTRAINT fk_commander_clients
FOREIGN KEY(id_clients)
REFERENCES clients(id_clients);

ALTER TABLE commander
ADD CONSTRAINT fk_commander_produits
FOREIGN KEY(id_produits)
REFERENCES produits(id_produits);

insert into roles(nom_roles) values 
('admin'),
('clients'),
('visiteur');
insert into clients(nom_clients, prenom_clients, mail_clients, mdp_clients, numero_rue_clients, nom_rue_clients, cp_clients, nom_ville_clients, telephone_clients, id_roles) values 
('test', 'test','test@test.com','1234','14','rue des lilas','75000','Paris','0000000000',1),
('test1', 'test1','test2@test2.com','4567','14','rue des lilas','75000','Paris','0000000000',2),
('test2', 'test2','test2@test2.com','891011','14','rue des lilas','75000','Paris','0000000000',3);
update clients set mdp_clients = md5(mdp_clients);