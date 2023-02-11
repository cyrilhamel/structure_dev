-- creation de la base de données blog_mythologique
CREATE DATABASE blog_mythologique;
USE blog_mythologique;
-- creation de la table image
CREATE TABLE image(
id_image INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
legende_image VARCHAR(50) NOT NULL,
url_image VARCHAR(100) NOT NULL
)engine=InnoDB;
-- creation de la table article
CREATE TABLE article(
id_article INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
titre_article VARCHAR(50) NOT NULL,
desc_article TEXT NOT NULL,
contenu_article TEXT NOT NULL,
date_article DATETIME NOT NULL,
id_utilisateur INT NOT NULL
)engine=InnoDB;
-- creation de la table utilisateur
CREATE TABLE utilisateur(
id_utilisateur INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_utilisateur VARCHAR(50) NOT NULL,
prenom_utilisateur VARCHAR(50) NOT NULL,
mail_utilisateur VARCHAR(50) NOT NULL,
mdp_utilisateur VARCHAR(100) NOT NULL,
id_roles INT NOT NULL,
id_image INT NOT NULL
)engine=InnoDB;
-- creation de la table roles
CREATE TABLE roles(
id_roles INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_roles VARCHAR(50) NOT NULL
)engine=InnoDB;
-- creation de la table categories
CREATE TABLE categories(
id_categories INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom_categories VARCHAR(50) NOT NULL
)engine=InnoDB;
-- creation de la table association commenter
CREATE TABLE commenter(
id_utilisateur INT NOT NULL,
id_article INT NOT NULL,
date_commenter DATETIME NOT NULL,
note_commenter INT NOT NULL,
com_commenter TEXT NOT NULL,
PRIMARY KEY(id_utilisateur, id_article, date_commenter)
)engine=InnoDB;
-- creation de la table association lier
CREATE TABLE lier(
id_categories INT NOT NULL,
id_article INT NOT NULL,
PRIMARY KEY(id_categories, id_article)
)engine=InnoDB;
-- creation de la table association illustrer
CREATE TABLE illustrer(
id_image INT NOT NULL,
id_article INT NOT NULL,
PRIMARY KEY(id_image, id_article)
)engine=InnoDB;
-- ajout des contraintes foreign key utilisateur
ALTER TABLE utilisateur
ADD CONSTRAINT fk_posseder_roles
FOREIGN KEY(id_roles)
REFERENCES roles(id_roles);

ALTER TABLE utilisateur
ADD CONSTRAINT fk_associer_image
FOREIGN KEY(id_image)
REFERENCES image(id_image);

-- ajout des contraintes foreign key article
ALTER TABLE article
ADD CONSTRAINT fk_rediger_utilisateur
FOREIGN KEY(id_utilisateur)
REFERENCES utilisateur(id_utilisateur);

-- ajout des contraintes foreign key commenter
ALTER TABLE commenter
ADD CONSTRAINT fk_commenter_utilisateur
FOREIGN KEY(id_utilisateur)
REFERENCES utilisateur(id_utilisateur);

ALTER TABLE commenter
ADD CONSTRAINT fk_commenter_article
FOREIGN KEY(id_article)
REFERENCES article(id_article);

-- ajout des contraintes foreign key lier
ALTER TABLE lier
ADD CONSTRAINT fk_lier_categories
FOREIGN KEY(id_categories)
REFERENCES categories(id_categories);

ALTER TABLE lier
ADD CONSTRAINT fk_lier_article
FOREIGN KEY(id_article)
REFERENCES article(id_article);

-- ajout des contraintes foreign key illustrer
ALTER TABLE illustrer
ADD CONSTRAINT fk_illustrer_image
FOREIGN KEY(id_image)
REFERENCES image(id_image);

ALTER TABLE illustrer
ADD CONSTRAINT fk_illustrer_article
FOREIGN KEY(id_article)
REFERENCES article(id_article);

insert into image(legende_image, url_image) values 
('le premiere image','images/premiere.jpg'),
('WOW super photo','images/wow.jpg');
insert into roles(nom_roles) values 
('admin'),
('visiteur');
insert into utilisateur(nom_utilisateur, prenom_utilisateur, mail_utilisateur, mdp_utilisateur, id_roles, id_image) values 
('test', 'test','test@test.com','1234',1,2),
('test1', 'test1','test1@test.com','45462154',2,1),
('test2', 'test2','test2@test.com','fdgswfhgh',2,2);
update utilisateur set mdp_utilisateur = md5(mdp_utilisateur);