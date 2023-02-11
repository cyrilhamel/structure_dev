create database monSQL;

use monSQL;
-- creation des tables
create table roles(
id_role int primary key auto_increment not null,
nom_role varchar(50) not null
)engine=innodb;

create table users(
id_user int primary key auto_increment not null,
nom_user varchar(50) not null,
prenom_user varchar(50) not null,
age_user int not null,
id_role int not null
)engine=innodb;

 create table magasin(
 id_magasin int primary key auto_increment not null,
 ville_magasin varchar(50) not null,
 id_user int not null
 )engine=innodb;
-- ajout des contraintes
alter table users
add constraint fk_role_user
foreign key(id_role)
references roles (id_role);

alter table magasin
add constraint fk_user_magasin
foreign key(id_user)
references users (id_user);

-- insertion des données
insert into roles (nom_role) values
("Responsable"),
("employé"),
("interimaire"),
("job etudiant");

insert into users (nom_user,prenom_user,age_user,id_role) values
("Rodrigues","Marguerite",58,2),
("Chevalier","Martine",52,2),
("Bernadette","Emilie",19,4),
("Roux","Madeleine",48,3),
("Perret","Patricia",42,1),
("Weber","Hugues",47,1),
("Letellier","Lucie",18,4),
("Raynaud","Christophe",38,3),
("Marin","Isaac",32,3),
("Le Gay","Noémi",20,4),
("Pinto","Christophe",41,1),
("Gomes","Patrick",50,3),
("Aubert","Philippe",40,1),
("Barbe","Odette",54,2),
("Turpin","Laetitia",44,2),
("Etienne","Bernard",47,3),
("Traore","Guy",52,3),
("Adam","Laure",21,4),
("Riou","Roger",48,2),
("Shneifer","Théodore",34,2),
("Barbier","Hugues",30,2),
("Guillon","Christelle",28,2),
("Toussaint","Yves",62,2),
("Barbier","Charles",44,3),
("Delorme","Bernadette",45,2),
("Vaillant","Jacques",56,2),
("Martinez","Léon",26,3),
("Lefort","Cécile",18,4);

insert into magasin (ville_magasin,id_user) values
("Paris",5),
("Marseille",6),
("Bordeaux",11),
("Lille",13),
("Paris",1),
("Paris",2),
("Paris",3),
("Paris",4),
("Paris",7),
("Paris",8),
("Marseille",9),
("Marseille",10),
("Marseille",12),
("Marseille",14),
("Marseille",15),
("Marseille",16),
("Bordeaux",17),
("Bordeaux",18),
("Bordeaux",19),
("Bordeaux",20),
("Bordeaux",21),
("Bordeaux",22),
("Lille",23),
("Lille",24),
("Lille",25),
("Lille",26),
("Lille",27),
("Lille",28);

-- requete selection liste par age superieure à 45
select*from users where age_user>45;

select
nom_user,
prenom_user,
nom_role
from
roles
inner join users
on roles.id_role = users.id_role;





