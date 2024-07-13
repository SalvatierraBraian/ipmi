void ciclodecuadrados(int TamRect, int CantRect) {
  translate(600, 200); // Trasladar al centro de los cuadrados

  for (int i = 0; i < CantRect; i++) {
    int size = TamRect - i * resto;             // Calcular el tamaño de cada cuadrado
    if (size > 0) {                            // solo dibuja si el tamaño es positivo
      pushMatrix();                           // Guardar la matriz de transformación actual
      rotate(radians(i * 3));                 // Rotar el cuadrado
      color fillcolor;
      if (i == 0 || i == CantRect - 1 || i % 2 == 0) {
        fillcolor = colores(color(0), color(0, 0, 255));          // si es par de negro a azul
      } else {
        fillcolor = colores(color(255), color(255, 255, 0));      // si es impar de blanco a amarillo
      }
      fill(fillcolor);                                            // pinta el próximo rect
      rectMode(CENTER);                                           // el rectángulo en el centro
      rect(0, 0, size, size);                                     // dibujar el cuadrado
      popMatrix(); // restaura la rotación de la matriz de transformación anterior de pushMatrix
    }
  }
}


//la funcion color la uso para pintar de distintos colores los rect
color colores(color inicio, color fin) {
  // Calcula la posicion del mouse
  float cambio = map(mouseX, width / 2, width, 0, 1); // interpolacion de colores de 0 a 1


  //map=valor, el valor inicial 0,1 y inicio y fin son a los valores que quiero llegar
  float r = map(cambio, 0, 1, red(inicio), red(fin));
  float g = map(cambio, 0, 1, green(inicio), green(fin));
  float b = map(cambio, 0, 1, blue(inicio), blue(fin));

  return color(r, g, b); //devolver el color interpolado de r,g,b
}
void keyPressed() {
  if (keyCode == ENTER) {
    resto++;
  } else if (key == 'r' || key == 'R') {
    resto = 20; // Reiniciar resto
  }
}
//no sabia que hacer con el for anidado ya que con un ciclo for 
//resolvi lo visual pero si se usarlo 


























+
