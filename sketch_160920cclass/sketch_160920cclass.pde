// just drawing many round shapes

void setup() {
 size(800, 800);
 map(mouseX, 0, 800, 300, 678);
}

void draw() {
ellipse(mouseX, mouseY, 20, 20);
}