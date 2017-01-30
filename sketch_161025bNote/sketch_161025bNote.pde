//rainy snowy day

int numParticles = 3000;

float[] rainXPositions;
float[] rainYPositions;
float[] rainSizes; 
float[] rainXSpeeds;
float[] rainYSpeeds;


float[] snowXPositions;
float[] snowYPositions;
float[] snowSizes; 
float[] snowXSpeeds;

void setup() {
  size(800, 800);
 
   rainXPositions = new float[numParticles];
   rainYPositions = new float[numParticles];
   rainSizes = new float[numParticles];
   rainXSpeeds = new float[numParticles];
   rainYSpeeds = new float[numParticles];
   
   
   snowXPositions = new float[numParticles];
   snowYPositions = new float[numParticles];
   snowSizes = new float[numParticles];
   snowXSpeeds = new float[numParticles];
   
   //initialize parameters
   for (int i = 0; i < numParticles; i++) {
     rainXPositions[i] = random(width);
     rainYPositions[i] = random(height);
     rainSizes[i] = random(19);
     rainXSpeeds[i] = random(3, 4);
     rainYSpeeds[i] = random(0.8f, 0.4f);
     
   //for (int i = 0; i < numParticles; i++) {
     snowXPositions[i] = random(width);
     snowYPositions[i] = random(height);
     snowSizes[i] = random(19);
     snowXSpeeds[i] = random(3, 4);
   }
    noStroke();
    fill(255, 200);
   }

  
void draw() {
  
  background(#1F9FB7);
  //logic
  for (int i = 0; i < numParticles; i++) {
    rainYPositions[i] += rainXSpeeds[i];
    rainYPositions[i] += rainXSpeeds[i];
    
    if (rainYPositions[i] > height) {
      rainYPositions[i] = 0;
    }
  }
  
  for (int i = 0; i < numParticles; i++) {
    snowXPositions[i] += snowXSpeeds[i];
    //recYPositions[i] += recXSpeeds[i];
    
    if (snowXPositions[i] >= width) {
      snowXPositions[i] = 0;
    }
  }
  for (int i = 0; i < numParticles; i++) {
    ellipse(rainXPositions[i], rainYPositions[i], rainYSpeeds[i], rainSizes[i]);
  }
  
  for (int i = 0; i < numParticles; i++) {
    snowXPositions[i] += snowXSpeeds[i];
    rect(snowXPositions[i], snowYPositions[i], 5, 5);
  }
}
    