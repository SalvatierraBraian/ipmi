// Salvatierra Braian 90338/1
//tp 3 comision 1
//https://youtu.be/6dUoGGp33WY
int resto= 20;
PImage opArt;
void setup() {
  size(800, 400); // Tamaño del lienzo
  opArt = loadImage("D_17.jpg"); // Cargar la imagen

}

void draw() {
    image(opArt, 0, 0, 400, 400);
  ciclodecuadrados(400,19); 
  noStroke();
 

}
