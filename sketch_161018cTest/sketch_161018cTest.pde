//Muscles and sinew 

float ballXPosition =0;
float ballYPosition =0;
float ball2XPosition =0;
float ball2YPosition =0;


float ballYSpeed = -6;
float ballXSpeed = -6;
float ball2YSpeed = -2;
float ball2XSpeed = -2;

float ballSize =80;

void setup() {
  size(800, 800);
  stroke(255, 255, 255, 50);
  background (0);

  ballXPosition = width /2;
  ballYPosition = height;
  ballYSpeed = random(-15, -5);

  ball2XPosition = width /2;
  ball2YPosition = random (0, height);
  ball2YSpeed = random(-15, -5);
}

void draw() {


  ballYPosition += ballYSpeed;
  if (ballYPosition <0 || ballYPosition > 800) {
    ballYSpeed = -ballYSpeed;
  }

  ballXPosition += ballXSpeed;
  if (ballXPosition <0 || ballXPosition > 800) {
    ballXSpeed *= -1;
  }



  ball2YPosition += ball2YSpeed;
  if (ball2YPosition <0 || ball2YPosition > 800) {
    ball2YSpeed = -ball2YSpeed;
  }

  ball2XPosition += ball2XSpeed;
  if (ball2XPosition <0 || ball2XPosition > 800) {
    ball2XSpeed *= -1;
  }

  float distBetweenBalls=
    dist (ballXPosition, ballYPosition, ball2XPosition, ball2YPosition);
  // line (ballXPosition, ballYPosition, ball2XPosition, ball2YPosition);
  println (distBetweenBalls);
  if (distBetweenBalls < 40) {
    ballSize = ballSize + 3;
  }

  float randomAmount =3;
  fill(#AF0404, 85);
  ellipse (ballXPosition + random (randomAmount), ballYPosition + random (randomAmount), ballSize, ballSize);
  fill (#930C0C, 85);
  ellipse (ball2XPosition + random (randomAmount), ball2YPosition + random (randomAmount), ballSize, ballSize);

  if (mousePressed) {
    saveFrame();
  }

}