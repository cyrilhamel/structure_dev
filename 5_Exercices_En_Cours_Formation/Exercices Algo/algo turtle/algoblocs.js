// D15
// Initialisation
setPos(300,300);
changeColor(color.red);
faceDown();
setLineWidth(3);
// Réalisation
let length=50;
let angle=90;
for (let i=0; i<10; i++){
    forward(length);
    left(angle);
    length = length+10;
    angle = angle-5;
}


