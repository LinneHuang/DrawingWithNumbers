// Making churros!

PImage churros1;
PImage churros2;
PImage woodenPlate;

// churros1's position & speed
float img1XPosition = 0;
float img1YPosition = 0;

float img1XSpeed = -4;
float img1YSpeed = -4;

// churros2's position & speed
float img2XPosition = 0;
float img2YPosition = 0;

float img2XSpeed = -4;
float img2YSpeed = -4;

void setup() {
 size(800, 800);
 
 churros1 = loadImage("churros.png");
 churros2 = loadImage("churros.png");
 woodenPlate = loadImage("woodenplate.png");
 
 // for churros1
 img1XPosition = width / 2;
 img1YPosition = height;
 img1XSpeed = random(2, 5);
 img1YSpeed = random(2, 4);
 
 // for churros2
 img2XPosition = width / 3;
 img2YPosition = height;
 img2XSpeed = random(2, 3);
 img2YSpeed = random(2, 5);
 
 
 stroke(255, 200);
   background(woodenPlate);

}


void draw() {
  //logic

  //// churros 1
  img1XPosition += img1XSpeed;
  img1YPosition += img1YSpeed;
  image(churros1, img1XPosition, img1YPosition, 60, 60);
  
  //// churros 2
  img2XPosition += img2XSpeed;
  img2YPosition += img2YSpeed;
  image(churros2, img2XPosition, img2YPosition, 60, 60);
  
  // make it bounced!
  // churros 1
  if (img1YPosition < 0 || img1YPosition > height) {
    img1YSpeed *= -1;
  }
  if (img1XPosition < 0 || img1XPosition > width) {
    img1XSpeed *= -1;
  }
  
  // churros 2
  if (img2YPosition < 0 || img2YPosition > height) {
    img2YSpeed *= -1;
  }
  if (img2XPosition < 0 || img2XPosition > width) {
    img2XSpeed *= -1;
  }
  
  // if two churros meet eachother
  float distBetweenImgs =
    dist(img1XPosition, img1YPosition, img2XPosition, img2YPosition);
  println("distBetweenImgs: " + distBetweenImgs);
  
  if (distBetweenImgs < 130) {
    tint(random(150, 255), random(150, 255), random(150, 255));
  } 
  
  if (mousePressed) {
    saveFrame();
  }
}