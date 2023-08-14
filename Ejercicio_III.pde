//Javier Salazar
//5212-22-107

float circleX, circleY;
float circleSize = 50;
float speedX = 2;

void setup() {
  size(800, 600);
  circleX = width / 2;
  circleY = height / 2;
}

void draw() {
  background(255);
  
  // Actualizar la posición del círculo
  circleX += speedX;
  
  // Rebotar cuando llega a los bordes
  if (circleX > width - circleSize / 2 || circleX < circleSize / 2) {
    speedX *= -1;
  }
  
  // Dibujar el círculo en la nueva posición
  fill(0, 150, 200);
  ellipse(circleX, circleY, circleSize, circleSize);
}
