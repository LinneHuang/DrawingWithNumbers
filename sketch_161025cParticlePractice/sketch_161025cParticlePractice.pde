int numSFs = 100; 
Snow[] SFs;

void setup() {
  size(800, 200);
  
  SFs = new Snow[numSFs];
  
  for (int i = 0; i < numSFs; i++) {
    SFs[i] = new Snow();
    SFs[i].initialize();
  }
}

void draw() {
  //update
  for (int i = 0; i < numSFs; i++) {
    SFs[i].update();
  }
  
  //draw
  background(0);
  noStroke();
  
  for (int i = 0; i < numSFs; i++) {
    SFs[i].draw();
  }
}



////////////////////////////////////
// WAY 1 ///////////////////////////
////////////////////////////////////


//int numP = 100;
//float[] xP; 
//float[] yP;
//float[] yS;

//Snow mySnow;

//void setup() {
//  size(800, 200);
//  xP = new float[numP];
//  yP = new float[numP];
//  yS = new float[numP];
  
  
//  for (int i = 0; i < 100; i++) {
//    xP[i] = random(width);
//    yP[i] = random(height);
//    yS[i] = random(1, 3);
//  }

//}

//void draw() {
//  //update
//  for (int i = 0; i < numP; i++) {
//    yP[i] += yS[i];
    
//    if (yP[i] > height) {
//        yP[i] = 0;
//    }
//  }
  

  
//  //draw
//  background(0);
  
//  for (int i = 0; i < numP; i++) {
//    ellipse(xP[i], yP[i], 20, 20);
//  }
  
//}