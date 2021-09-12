class Mover {
  PVector loc;
  PVector acc;
  PVector vel;
  float aVel = 0;
  float angle = 0;
  float aAcc = 0.5; 
  
  Mover() {
    loc = new PVector(0, 900);
    acc = new PVector(0, 0);
    vel = new PVector();
    
  }

  void update(PVector f) {
    acc.add(f);
    vel.add(acc);   
    loc.add(vel);
    acc.mult(0);
    aVel += aAcc;
    angle += aVel;
    aAcc = acc.x;
  }
  void display() {
    rectMode(CENTER);
    translate(loc.x, loc.y);
    rotate(angle);
    ellipse(0, 0, 32, 16);
  }
 
}
