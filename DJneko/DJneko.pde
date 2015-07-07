float x = 0 ;
float vx = 1 ;
float y = 0 ;
float vy = 1 ;

import ddf.minim.*;

Minim minim;
AudioPlayer rhythm;
AudioPlayer chords;
AudioPlayer Heavenly;
AudioPlayer Popcorn;
AudioPlayer seq1;
AudioPlayer seq2;

void setup() {
  size(200, 200);

  minim = new Minim(this);
  rhythm = minim.loadFile("rhythm.mp3");
  chords = minim.loadFile("chords.mp3");
  Heavenly = minim.loadFile("Heavenly.mp3");
  Popcorn = minim.loadFile("Popcorn.mp3");
  seq1 = minim.loadFile("seq1.mp3");
  seq2 = minim.loadFile("seq2.mp3");
}

void draw() {
  background(100);

  translate(x-50, y-50);

  vy = vy + 1 ;
  x = x + vx ;
  y = y +vy ;

  //moveright
  if (x > width-30) {
    x = width-30;
    vx = -vx ;
  }
  //moveleft
  if (x < 30) {
    x = 30 ;
    vx = -vx ;
  }
  //moveup
  if (y > height-44) {
    y= height-44 ;
    vy = -vy ;
  }
  //movedown
  if (y < 30) {
    y = 30 ;
    vy = -vy ;
  }


  //first leg
  stroke(0);
  strokeWeight(4);
  line(25, 60, 25, 75);

  //second leg
  stroke(0);
  strokeWeight(4);
  line(35, 60, 35, 90);

  //fifth leg
  stroke(0);
  strokeWeight(4);
  line(65, 60, 65, 90);

  //sixth leg
  stroke(0);
  strokeWeight(4);
  line(75, 60, 75, 75);

  //legs
  stroke(0);
  strokeWeight(4);
  line(45, 75, 45, 95);
  line(55, 75, 55, 95);

  //leftEar
  fill(196, 73, 16);
  triangle(25, 30, 32, 10, 45, 30);

  //rightEar
  fill(196, 73, 16);
  triangle(55, 30, 67, 10, 75, 30);

  //head
  strokeWeight(1);
  fill(120, 155, 185);
  if (keyPressed) {
    fill(50+x, 50+y, 50+y);
  }
  ellipse(50, 50, 70+mouseX/40, 70-mouseY/45);

  //eyes
  noStroke();
  fill(255, 255, 255);
  ellipse(map(mouseX, 0, width, 25, 45), 
  map(mouseY, 0, height, 35, 45), 6, 8);
  ellipse(map(mouseX, 0, width, 60, 70), 
  map(mouseY, 0, height, 35, 45), 6, 8);

  //mouse
  strokeWeight(1);
  stroke(150, 120, 120);
  fill(150, 50, 50);
  ellipse(map(mouseX, 0, width, 45+mouseY/50, 55-mouseY/50), 
  map(mouseY, 0, height, 55+mouseY/50, 60+mouseY/110), 
  10+mouseY/50, 15-mouseY/50);
}

void keyPressed() {
  //rhythm
  if ( key == 'q')
  {
    rhythm.rewind() ;
    rhythm.play();
    rhythm.loop();
  }
  if ( key == 'a')
  {
    rhythm.pause();
  }

  //chords
  if ( key == 'w')
  {
    chords.rewind() ;
    chords.play();
    chords.loop();
  }
  if ( key == 's')
  {
    chords.pause();
  }

  //Heavenly
  if ( key == 'e')
  {
    Heavenly.rewind() ;
    Heavenly.play();
    Heavenly.loop();
  }
  if ( key == 'd')
  {
    Heavenly.pause();
  }

  //seq1
  if ( key == 'r')
  {
    seq1.rewind() ;
    seq1.play();
    seq1.loop();
  }
  if ( key == 'f')
  {
    seq1.pause();
  }

  //sequ
  if ( key == 't')
  {
    seq2.rewind() ;
    seq2.play();
    seq2.loop();
  }
  if ( key == 'g')
  {
    seq2.pause();
  }

  //Popcorn
  if ( key == 'y')
  {
    Popcorn.rewind() ;
    Popcorn.play();
    Popcorn.loop();
  }
  if ( key == 'h')
  {
    Popcorn.pause();
  }
}

