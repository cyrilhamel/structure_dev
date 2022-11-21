function Exo2() {
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

calcul();

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



