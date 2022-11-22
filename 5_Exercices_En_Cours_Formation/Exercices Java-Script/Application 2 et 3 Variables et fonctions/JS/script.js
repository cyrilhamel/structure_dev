/*function Exo2() {
  let nombre = prompt("combien avez vous d'enfants?");
  for (let i = 0; i <= nombre; i++) {
    let age = prompt("Quel age à votre enfant?");
    if (age >= 6 && age <= 7) {
      alert("Poussin");
    } else if (age >= 8 && age <= 9) {
      alert("Pupille");
    } else if (age >= 10 && age <= 11) {
      alert("Minime");
    } else if (age >= 12 && age <= 17) {
      alert("Cadet");
    } else {
      alert("n'a pas l'age requis");
    }
  }
}

function getChild() {
  let nombre = prompt("combien avez vous d'enfants?");
  return nombre;
}
function getCategorie() {
  let nombre = getChild();
  for (let i = 0; i < nombre; i++) {
    let age = prompt("Quel age à votre enfant?");
    if (age >= 6 && age <= 7) {
      alert("Poussin");
    } else if (age >= 8 && age <= 9) {
      alert("Pupille");
    } else if (age >= 10 && age <= 11) {
      alert("Minime");
    } else if (age >= 12 && age <= 17) {
      alert("Cadet");
    } else {
      alert("n'a pas l'age requis");
    }
  }
}

function Exo3() {
  getCategorie();
}

switch (age) {
  case 6:
  case 7:
    alert("Poussin");
    break;

  case 8:
  case 9:
    alert("Pupille");
    break;
  case 10:
  case 11:
    alert("Minime");
    break;

  case 12:
  case 13:
  case 14:
  case 15:
  case 16:
  case 17:
    alert("Cadet");
    break;
}

function nombre() {
  let nombre = prompt("rentrez un nombre");
}

function calcul() {
  function nombre() {
    let nombre = parseInt(prompt("rentrez un nombre"));
    return nombre;
  }
  function somme(nombre1, nombre2) {
    let result = nombre1 + nombre2;
    return result;
  }
  function multiplication(nombre1, nombre2) {
    let result = nombre1 * nombre2;
    return result;
  }
  function moyenne(nombre1, nombre2) {
    let result = (nombre1 + nombre2) / 2;
    return result;
  }
  function modulo(nombre1, nombre2) {
    let result = nombre1 % nombre2;
    return result;
  }

  let nb1 = nombre();
  let nb2 = nombre();
  console.log(somme(nb1, nb2));
  console.log(multiplication(nb1, nb2));
  console.log(moyenne(nb1, nb2));
  console.log(modulo(nb1, nb2));
  let tab = [];
  tab.push("Le résultat de l'addition est " + somme(nb1, nb2));
  tab.push(
    "\n" + "Le résultat de la multiplication est " + multiplication(nb1, nb2)
  );
  tab.push("\n" + "Le résultat de la moyenne est " + moyenne(nb1, nb2));
  tab.push("\n" + "Le résultat du modulo est " + modulo(nb1, nb2));
  alert(tab);
}

//calcul();

//Exercice d'application 4 pour Enzo et Valérie

class Complexe {
  constructor(reel, imaginaire) {
    this.reel = reel;
    this.imaginaire = imaginaire;
  }
  // crée le reel ou l'imaginaire ou les 2
  setReel(reel) {
    this.reel = reel;
  }

  setImaginaire(imaginaire) {
    this.imaginaire = imaginaire;
  }
  //récupère le reel ou l'imaginaire ou les 2
  getReel() {
    return this.reel;
  }
  getImaginaire() {
    return this.imaginaire;
  }
// Ajoutez une méthode toString(), qui retourne le nombre sous la forme a+b*i
  toString() {
    return "attribut reel"+ this.reel + "attribut imaginaire"+ this.imaginaire+"*"+"i";

    }
  }

// Exo Rectangle
// Class Rectangle
// attributs: longueur, largeur
// getters, setters, toString, getPerimetre, getSurface, test de la classe

class Rectangle {
  constructor(longueur, largeur){
      this.longueur = longueur;
      this.largeur = largeur;
  }
  getLongueur(){
      return this.longueur ;
  }
  getLargeur(){
      return this.largeur ;
  }
  setLongueur(longueur){
      this.longueur = longueur;
  }
  setLargeur(largeur){
      this.largeur = largeur;
  }
  toString(){
      return ("Longueur :"+this.longueur+"\n"+"Largeur"+this.largeur);
  }
  getPerimetre(){
      return 2*(this.longueur+this.largeur);
  }
  getSurface(){
      return this.longueur*this.largeur;
  }
}

let rect1 = new Rectangle(10,4);
//console.log(rect1.getLargeur());
 


//Pour info et comme on ne l'a pas explicitement vu le setter s'utilise de cette manière : 
rect1.setLarg(prompt("Veuillez entrer une nouvelle largeur pour rect1 :"));

function testString(ch1, ch2) {
  if (ch1.includes(ch2) || ch2.includes(ch1)) {
    return true;
  } else {
    return false;
  }
}

let ch1 = prompt("Entrez votre 1ere phrase");
let ch2 = prompt("entrez votre deuxieme phrase");
alert(testString(ch1, ch2));*/

// Exercice d'application numéro 5



// Cherche et trouve game
/*function findIt(){
//creation d'un nombre a virgule random
Math.round(Math.random()) * 2 - 1;
let valeurAChoisir = (Math.round(Math.random())*2 - 1) * Math.round(Math.random()*1000)/10;

let choisi = prompt("choisi un nombre");
let tryAgain = 0;
while(choisi!=valeurAChoisir){
  
  if (choisi < valeurAChoisir){
    alert ("Plus grand");
    tryAgain++;
  }else if(choisi > valeurAChoisir){
    alert ("Plus petit");
    tryAgain++;
  }
  choisi = prompt("choisi un nombre");
}
alert("gagné!!! en "+ tryAgain + "fois");
}

findIt();*/

/*let semaine = ["lun","mra","mer","jeu","ven","sam"];
semaine.pop();
console.log (semaine);
semaine.push("dim");
semaine[1]="mar";
document.write(semaine.length);
document.write(semaine[2]);*/

function dateFr(){
  let nom = [];
  nom.push(prompt("choisissez un nom ou 0 pour lancer le tirage"));
if(nom.includes()!=0){
  let rang = Math.floor(Math.random()*nom.length);
  alert(" Le tirage au sort du DATE FR a désigné comme grand gagnant "+nom[rang]+"!!!");
}else{
  nom.push(prompt("choisissez un nom ou 0 pour lancer le tirage"));
}

}

dateFr();




