import gab.opencv.*;
import processing.video.*;
import java.awt.*;

PGraphics pg;

Capture video;
OpenCV opencv;

int previousFaceX;
int previousFaceY;

void setup() {
  size(640, 480);
  pg = createGraphics(100, 100);
  
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2); //the image will be displayed in 2x
  opencv.loadImage(video);

  color c;
  c = color(random(255), random(255), random(255));
  


    
  pg.beginDraw();
    pg.background(0);
    
    pg.fill(c);
  Rectangle[] faces = opencv.detect();
    println("face.length: " + faces.length); // why it always shows "1"?
    
    for (int i = 0; i < faces.length; i++) {
    println("x:" + faces[i].x + ", y: " + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    
    //ellipse(faces[i].x, faces[i].y, 5, 5);
    pg.line(faces[i].x, faces[i].y, previousFaceX, previousFaceY);
    previousFaceX = faces[0].x;
    previousFaceY = faces[0].y;
    }
    
  pg.endDraw();

  image(video, 0, 0); //function as background()
}

void captureEvent(Capture c) {
  c.read();
}






PGraphics pg;

void setup() {
  size(200, 200);
  pg = createGraphics(100, 100);
}

void draw() {
  pg.beginDraw();
  pg.background(102);
  pg.stroke(255);
  pg.line(pg.width*0.5, pg.height*0.5, mouseX, mouseY);
  pg.endDraw();
  image(pg, 50, 50); 
}