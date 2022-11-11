// Écrire une fonction qui prend un tableau en entrée et affiche le dernier élément de ce tableau.
function dernier(tab) {
    let num = tab.length - 1;
    console.log(tab[num]);
}
// Écrire une fonction qui prend un tableau en entrée et retourne le dernier élément de ce tableau.
function returnLast (tab) {
    return tab[tab.lenghth-1];
}
// Écrire une fonction qui prend en entrée un tableau et qui retourne le minimum de ce tableau.
function minimum (t) {
    let currentMin = t[0];
    for (let i=0; i<t.length; i++){
        if(t[i] < currentMin) {
            currentMin = t[i];

        }
        
    }
    return currentMin;
}
console.log (minimum([14,12,-10,4,7,48]));
// Écrire une fonction qui prend en entrée un tableau et qui retourne le maximum de ce tableau.
function maximum (t) {
    let currentMax = t[0];
    for (let i=0; i<t.length; i++){
        if(t[i] > currentMax) {
            currentMax = t[i];

        }
        
    }
    return currentMax;
}
console.log (maximum([14,12,-10,4,7,48]));
// [Plus difficile - bonus] Écrire une fonction qui prend en entrée un tableau de nombres positifs et qui retourne la deuxième plus grande valeur du tableau.


// Écrire une fonction qui prend en entrée un tableau et un nombre et qui retourne le nombre de fois que ce nombre apparaît dans le tableau.
function count(t,n){
    let counter = 0;
    for (let i=0; i<t.length; i++){
        if(t[i] == n){
            counter++;
        }
    }
    return counter;
}


// Écrire une fonction qui prend en entrée un tableau et un nombre et qui retourne true si le nombre existe dans le tableau, false sinon.
function detect(t,n){
    for (let i=0; i<t.length; i++){
        if (t[i] == n){
            return true;
        }
    }
    return false;
}

function detectBis(t,n){
    let nombreDeN=count(t,n);
    return nombreDeN > 0

}

function detectTer (t,n){
    return count <0;
}
// [Bonus] Suite de l'exo : on **sait** que le tableau reçu est trié (on ne le vérifie pas). Comment exploiter cette information pour améliorer la recherche d'un élément ?

// Créer un tableau qui contient [1,2,3,...,7777].
function creatTab (){
    let newT = []; 
    for (let i=0; i<7777; i++){
        newT.push(i);
    }
    return newT;
}
console.log (creatTab());
// Créer un tableau qui contient [10,20,30,...,77770].
function creatTab2 (){
    let newT = []; 
    for (let i=10; i<77770; i+=10){
        newT.push(i);
    }
    return newT;
}
console.log (creatTab2());
// En se servant du tableau précédent, créer un tableau qui contient [5,10,15,...,38885].
function creatTab3 (){
    return creatTab2/2;
}
console.log (creatTab3());

// Écrire une fonction qui prend un tableau en entrée et qui en supprime les dernières valeurs, tant qu'elles sont inférieures à 50.
// console.log(leNomDeVotreFonction([1,45,88,54,23,-100,12]); // doit afficher [1,45,88,54]

