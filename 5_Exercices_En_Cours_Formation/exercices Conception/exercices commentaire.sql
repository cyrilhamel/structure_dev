-- Création de la base de données
CREATE DATABASE commentaires_utilisateurs;

-- utilisation de la base de données
USE commentaires_utilisateurs;

-- création des tables :
CREATE TABLE utilisateur(
id_utilisateur INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_utilisateur VARCHAR(50) NOT NULL,
prenom_utilisateur VARCHAR(50) NOT NULL,
mail_utilisateur VARCHAR(100) NOT NULL,
id_role_utilisateur INT NOT NULL,
id_image INT NOT NULL
)engine=InnoDB;

CREATE TABLE commentaire(
id_commentaire INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
contenu_commentaire VARCHAR(255) NOT NULL,
date_commentaire DATETIME NOT NULL,
id_article INT NOT NULL,
id_utilisateur INT NOT NULL
)engine=InnoDB;

CREATE TABLE categorie(
id_categorie INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_categorie VARCHAR(100) NOT NULL
)engine=InnoDB;

CREATE TABLE role_utilisateur(
id_role_utilisateur INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_role_utilisateur VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE article(
id_article INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_article VARCHAR(50) NOT NULL,
contenu_article TEXT NOT NULL,
date_article DATETIME NOT NULL,
id_utilisateur INT NOT NULL
)engine=InnoDB;

CREATE TABLE image(
id_image INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_image VARCHAR(50) NOT NULL,
url_image VARCHAR(100) NOT NULL,
id_article INT NOT NULL
)engine=InnoDB;

CREATE TABLE filtrer(
id_categorie INT NOT NULL,
id_article INT NOT NULL,
PRIMARY KEY(id_categorie, id_article)
)engine=InnoDB;

-- ajout des contraintes foreign key

ALTER TABLE filtrer
ADD CONSTRAINT fk_filtrer_categorie
FOREIGN KEY(id_categorie)
REFERENCES categorie(id_categorie);

ALTER TABLE filtrer
ADD CONSTRAINT fk_filtrer_article
FOREIGN KEY(id_article)
REFERENCES article(id_article);

ALTER TABLE utilisateur
ADD CONSTRAINT fk_posseder_role
FOREIGN KEY (id_role_utilisateur)
REFERENCES role_utilisateur(id_role_utilisateur);

ALTER TABLE utilisateur
ADD CONSTRAINT fk_completer_image
FOREIGN KEY (id_image)
REFERENCES image(id_image);

ALTER TABLE commentaire
ADD CONSTRAINT fk_agrementer_article
FOREIGN KEY (id_article)
REFERENCES article(id_article);

ALTER TABLE commentaire
ADD CONSTRAINT fk_ecrire_article
FOREIGN KEY (id_utilisateur)
REFERENCES utilisateur(id_utilisateur);

ALTER TABLE image
ADD CONSTRAINT fk_completer_utilisateur
FOREIGN KEY (id_utilisateur)
REFERENCES utilisateur(id_utilisateur);

ALTER TABLE article
ADD CONSTRAINT fk_agrementer_article
FOREIGN KEY (id_utilisateur)
REFERENCES utilisateur(id_utilisateur)








