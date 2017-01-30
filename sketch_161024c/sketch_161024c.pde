ParticleSystem ps;

void setup() {
  size(640, 360);
  noStroke();
  ps = new ParticleSystem();
}

void draw() {
  float alpha = random(25, 75);

  fill(0, 2);
  rect(0, 0, width, height);
  fill(100, 100, 255, alpha);
  ps.run();
}

class Drop {
  PVector pos;
  float d;
  float fall;

  Drop(PVector pos_) {
    pos = pos_;
    d = random(15, 25);
    fall = random(1, 3);
  }

  void run() {
    update();
    isDead();
    display();
  }

  void display() {
    ellipse(pos.x, pos.y, d, d);
  }

  void update() {
    pos.y += fall;
  }

  boolean isDead() {
    if (pos.y + d/2 > height) return true;
    else return false;
  }
}

class ParticleSystem {
  ArrayList<Drop> drops;

  float tx;
  float ty;

  ParticleSystem() {
    drops = new ArrayList<Drop>();
    PVector pos = new PVector(random(width), random(height));
    drops.add(new Drop(pos));
    tx += .006;
    ty += .006;
  }

  void run() {
    for (int i = 0; i < drops.size(); i++) {
      Drop drop = drops.get(i);
      drop.run();
    }

    if (drops.size() < 50) {
      float nx = noise(tx);
      float ny = noise(ty);
      float x = map(nx, 0, 1, 0, width);
      float y = map(ny, 0, 1, 0, height);
      PVector pos = new PVector(random(width), random(height));
      drops.add(new Drop(pos));
      tx += 0.06;
      ty += 0.06;
    }

    for (int i = drops.size() - 1; i > 0; i--) {
      Drop drop = drops.get(i);
      if (drop.isDead()) {
        drops.remove(drop);
      }
    }
  }
}