Normal[] particles = new Normal[400];
Jumbo[] particle1 = new Jumbo[1];
Oddball ball = new Oddball();

void setup() {
  size(700,700);
  background(0);
  noStroke();
  
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Normal();
  }
  for (int i = 0; i < particle1.length; i++) {
    particle1[i] = new Jumbo();
  }
} 

void draw() {
  fill(0);
  background(0);
  translate(width/2,height/2);
  for (int i = 0; i < particles.length; i++) {
    particles[i].update();
    particles[i].draw();
  }
  for (int i = 0; i < particle1.length; i++) {
    particle1[i].update();
    particle1[i].draw();
  }
  ball.draw();


  
}
