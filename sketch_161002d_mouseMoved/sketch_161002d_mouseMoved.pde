// Move the mouse across the image
// to change its value

int value = 0;

void setup() {
  size(500, 500);
}

void draw() {
  fill(value);
  rect(25, 25, 400, 400);
}

void mouseMoved() {
  value = value + 5;
  if (value > 255) {
    value = 0;
  }
}