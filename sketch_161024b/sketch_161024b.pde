int numRains=100;

Rain [] rn = new Rain [numRains]; //arrange an array of droplets
  
void setup ()
{
 size (600,600);
 smooth ();
 noStroke ();
 
   for (int i=0; i<rn.length; i++)   {
   rn [i]= new Rain (random(width),10,random(width/200),random(1,width/40));
 }
}
void draw () 
{
 fill (0,15);
 background(0);
 for (int i=0; i<rn.length; i++){
   fill (255);
   rn[i].move ();
   rn[i].display ();
 }
}
class Rain
{
 float x,y;
 float diameter;
 float speed; 
 int direction=1;  

 Rain (float xpos, float ypos, float dia, float sp)
 {
   x=xpos;
   y=ypos;
   diameter=dia;
   speed=sp;
 }

 void move () {

   y +=(speed * direction);
   if ((y>(height-diameter/2)) || (y<diameter/2)){
     y=0;
     /* 
//this is good but only when the mouse is held down!
     if (mousePressed){ 
      y=height;
      }
      */
   }
 }

 void display() // draws the spot to the display 
 {
   for (int i=0; i<15; i++){ 
     pushMatrix();
     translate (x,y+(i*2.5));   
     fill(25*i);
     ellipse (0,0,diameter,diameter);
     popMatrix();
   }
 }
//this is the bit that doesnt work!
 void mousePressed(){
   y +=(speed * direction);

   if ((y>(height-diameter/2)) || (y<diameter/2)){ 
     y=height;
   }
 }
}