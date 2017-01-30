//float ball0YPosition = 0;
//float ball1YPosition = 0;

int numParticles = 10000;

float[] ballXPositions;
float[] ballYPositions;

float[] ballSizes;
float[] ballSpeeds;


void setup() {
  size(800, 800);
  
  ballXPositions = new float[numParticles];
  ballYPositions = new float[numParticles];
  ballSizes = new float[numParticles];
  ballSpeeds = new float[numParticles];
  
  
  // initialize parameters
  for (int i = 0; i < numParticles; i++) {
    ballXPositions[i] = random(width);
    ballYPositions[i] = random(height);
    ballSizes[i] = random(2.0);
    ballSpeeds[i] = random(0.1f, 0.2f) * ballSizes[i] * 10;
  }
  
  noStroke();
  fill(255, 200);
}

void draw() {
  // logic #Q: 3.0f vs 3.0???
  for (int i = 0; i < numParticles; i++) {
    ballYPositions[i] += ballSpeeds[i];
    ballXPositions[i] -= ballSpeeds[i]; // blow them to the left
    if (ballYPositions[i] > height) {
      ballYPositions[i] = 0;
    }   
  }
  
  background(30);
  for (int i = 0; i < numParticles; i++) {
   ellipse(ballXPositions[i], ballYPositions[i], ballSizes[i], ballSizes[i]);
  }

}

// way 2
//void draw() {
//  // logic
//  // 3.0f? 3.0??
//  ballYPositions[0] += 3.0;
//  ballYPositions[1] += 2.0;
  
//  if (ballYPositions[0] > height) {
//  ballYPositions[0] = 0;
//  }
  
//  if (ballYPositions[1] > height) {
//  ballYPositions[1] = 0;
//  }
  
//  background(0);
//  //ellipse(ballXPositions[0], ballYPositions[0], 40, 40);
//  //ellipse(ballXPositions[1], ballYPositions[1], 40, 40);

//}