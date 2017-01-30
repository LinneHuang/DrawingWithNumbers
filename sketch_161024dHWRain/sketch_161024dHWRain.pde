//<> by Linne S. Huang
//Loop Reference: Daniel Shiffman

Rain[] rain = new Rain[1000];

// A: "the array of the float of rainXPositions"
// float[] rainXPositions = new float[numParticles]

int totalRain = 0;
float rainTail = 0;

void setup() {
  size(1000,675);
  smooth();
  background(0);
  noStroke();
}

void draw() {
  // "draw" the range of rain
  
  //make the rain back to little balls
  //background(0);
  
  rectMode(CENTER);
  fill(0, 0, 0, 70); // the opacity applies to rain-tails
  rect(width / 2, height / 2, width, height);

  rain[totalRain] = new Rain();
  totalRain++ ;

  if (totalRain >= rain.length) {
    totalRain = 0; //Start over
  }

  for (int i = 0; i < totalRain; i++ ) { 
    rain[i].drop();
    rain[i].display();
  }

}

//// make short rain or long rain
//void keyPressed()
//  {
//    if (keyCode == UP) {
//      k += 3;
//    } else if (keyCode == DOWN) {
//      k -= 3f;
//    }
//  }

// define class
class Rain { 
  float RainX, RainY;
  float RainRadius;
  float RainSpeed;
  color RainColor;

  // Parameters for rain
  Rain () {
    RainRadius = 10; // mini rain
    RainX = random(width); // anywhere on X
    RainY = 0; // but start with the same "skyline"
    RainColor = color(150, 80, mouseY/3);
    RainSpeed = random(2.5f, 4);
  }
  
  void drop() {
    RainY += RainSpeed;
  }
    
  void display() {
    for (int i = 2; i < 4; i++) { 
      noStroke();
      fill(RainColor);
      ellipse(RainX, RainY, RainRadius, RainRadius);
    }
  }

}