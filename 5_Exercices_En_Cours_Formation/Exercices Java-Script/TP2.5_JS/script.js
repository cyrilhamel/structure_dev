

function ajouTache(){
    let li=document.createElement("li");
    let inputValue=document.querySelector("input");
    let tache = document.createTextNode(inputValue);
    li.appendChild(tache);
    if(inputValue ===""){
        alert("entrez une nouvelle tache");
    }else{
        document.getElementsByClassName("liste").appendChild(li);
    }
}
document.querySelector("input").value="";

let span=document.createElement("SPAN");
let txt=document.createTextNode