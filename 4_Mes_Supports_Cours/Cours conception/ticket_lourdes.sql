-- Création de la base de données
CREATE DATABASE ticket_lourdes;

-- utilisation de la base de données
USE ticket_lourdes;

-- création des tables :
CREATE TABLE produit(
id_produit INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_produit VARCHAR(50) NOT NULL,
prix_produit FLOAT NOT NULL,
description_produit TEXT NOT NULL
)engine=InnoDB;

CREATE TABLE vendeur(
id_vendeur INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_vendeur VARCHAR(50) NOT NULL,
prenom_vendeur VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE ticket(
id_ticket INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
date_ticket DATETIME NOT NULL,
id_vendeur INT NOT NULL
)engine=InnoDB;

CREATE TABLE ajouter(
id_produit INT NOT NULL,
id_ticket INT NOT NULL,
quantite_ajouter INT NOT NULL,
PRIMARY KEY(id_produit, id_ticket)
)engine=InnoDB;

-- ajout des contraintes foreign key
ALTER TABLE ticket
ADD CONSTRAINT fk_editer_vendeur
FOREIGN KEY(id_vendeur)
REFERENCES vendeur(id_vendeur);

ALTER TABLE ajouter
ADD CONSTRAINT fk_ajouter_produit
FOREIGN KEY(id_produit)
REFERENCES produit(id_produit);

ALTER TABLE ajouter
ADD CONSTRAINT fk_ajouter_ticket
FOREIGN KEY(id_ticket)
REFERENCES ticket(id_ticket);
