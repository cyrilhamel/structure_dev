-- dans la base de données ticket_lourdes
-- utiliser use nom_base;

insert into vendeur(nom_vendeur,prenom_vendeur) values
('Roosvelt','Téo'),
('Bailly','Alex'),
('Garnier','Bertrand'),
('Delahaye','Martin');

insert into produit (nom_produit, prix_produit, description_produit) values
('chocolat', 1.10, 'tablette de chocolat'),
('farine', 0.50, 'paquet de farine'),
('oeufs', 2.60, 'boite de 12 ouefs'),
('levure', 0.90, '6 sachets de levure chimique'),
('sucre vanillé', 1.10, '6 sachets de sucre vanillé'),
('beurre', 1.15, 'plaquette de beurre');

insert into ticket(id_ticket,date_ticket, id_vendeur) values (7,'2022-12-20 10:10:05', 8);

insert into ajouter(id_produit, id_ticket, quantite_ajouter) values
(6, 1, 1),
(6, 2, 1),
(6, 3, 1),
(6, 4, 1);


