Mover m;
PVector g = new PVector(0, 0.1);
float px, py;
int n;
color c;
int d, t;

String s = "FULL POWER";
String s2 = "0% POWER";
String s3 = "CLICK TO SHOOT";
String s4 = " Score";
void setup() {
  size(1920, 900);
  smooth();
  ellipseMode(CENTER);
  d = 0;
  newTarget();
}

void mouseReleased() {
  m = new Mover();
  PVector f = new PVector(mouseX,-(height - mouseY));
  println(f);
  //float ma = log(f.mag()*100);
  //f.normalize();
  f.mult(0.02);//ma);
  
  m.update(f);
}

void draw() {
clear();{
    for ( int i=n-1; i >=0; i-- ) {
      stroke(0);
      int r = 20 + (20 * i);
      ellipse(px, py, r, r );
    }
    if ( millis() > t ) {
      n--;
      if ( n == 0 ) {
        newTarget();
      }
      t = millis() + 500;
    }
  } 
stroke(255);
text(s4,60,300,100,100);
text(s3,960,900,100,100);
text(s,980,30,50,50);
text(s2,30,60,50,50);
line(0,900,mouseX,mouseY);
rect(0,20,mouseX,20);
  if (m != null) {
    m.display();
    m.update(g);
  }
}
