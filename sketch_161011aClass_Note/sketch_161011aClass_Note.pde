float ballXPosition = 0;
float ballYPosition = 0;
float ball2XPosition = 0;
float ball2YPosition = 0;

float ballXSpeed = -4;
float ballYSpeed = -4;
float ball2XSpeed = -4;
float ball2YSpeed = -4;

void setup() {
  size(800, 800);
  ballXPosition = width / 2;
  ballYPosition = height;
  
  ballXSpeed = random(3, 6);
  ballYSpeed = random(3, 6);
  
  ball2XPosition = width / 2;
  ball2YPosition = height;
  
  ball2XSpeed = random(3, 6);;
  ball2YSpeed = random(3, 6);;
  
  stroke(255, 150);
  background(0);
}

void draw() {
  //setup
  ballXPosition += ballXSpeed;
  ballYPosition += ballYSpeed;
  
  ball2XPosition += ball2XSpeed;
  ball2YPosition += ball2YSpeed;

  //background(0);
  //ellipse(ballXPosition, ballYPosition, 50, 50);


  //if (ballYPosition <= 1) {
  //  //ballYPosition = height;

  //  //ballYSpeed = ballYSpeed * -1;
  //  ballYSpeed *= -1;
  //}

  //if (ballYPosition >= height) {
  //  //ballYPosition = height;
  //  ballYSpeed *= -1;
  //}
  // summarize as below:


  if (ballYPosition < 0 || ballYPosition > height) {
    ballYSpeed *= -1;
  }

  if (ballXPosition < 0 || ballXPosition > width) {
    ballXSpeed *= -1;
  }
  
  
  //ellipse(ball2XPosition, ball2YPosition, 50, 50);
  
  if (ball2YPosition < 0 || ball2YPosition > height) {
    ball2YSpeed *= -1;
  }

  if (ball2XPosition < 0 || ball2XPosition > width) {
    ball2XSpeed *= -1;
  }
  
  float distBetweenBalls =
    dist(ballXPosition, ballYPosition, ball2XPosition, ball2YPosition);
    line(ballXPosition, ballYPosition, ball2XPosition, ball2YPosition);
  println(distBetweenBalls);
  
  if (distBetweenBalls < 40) {
    fill(random(255), random(255), random(255));
  }
  
  float randomAmount = 10;
  //ellipse(ballXPosition + random(randomAmount), 
  //ballYPosition + random(randomAmount), 
  //40, 40);
  
  //ellipse(ball2XPosition + random(randomAmount), 
  //ball2YPosition + random(randomAmount), 
  //40, 40);
}

void keyPressed() {
  if (key == 'c') {
    stroke(random(255), random(255), random(255), 150);
  }

}