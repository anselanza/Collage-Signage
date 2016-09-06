int letterWidth;
Letter lettersStreet[] = new Letter[6];
Letter lettersChoir[] = new Letter[5];

void setup() {
  fullScreen();
  //size(640, 400);
  frameRate(2);
  noCursor();
  lettersStreet[0] = new Letter("s");
  lettersStreet[1] = new Letter("t");
  lettersStreet[2] = new Letter("r");
  lettersStreet[3] = new Letter("e");
  lettersStreet[4] = new Letter("e");
  lettersStreet[5] = new Letter("t");
  
  lettersChoir[0] = new Letter("c");
  lettersChoir[1] = new Letter("h");
  lettersChoir[2] = new Letter("o");
  lettersChoir[3] = new Letter("i");
  lettersChoir[4] = new Letter("r");
  
}

void draw() {
  background(0);
  letterWidth = width / lettersStreet.length;
  
  for (int i = 0; i < lettersStreet.length; i++) {
    lettersStreet[i].draw(i * letterWidth, (int)(height *0.1), letterWidth);
  }

  letterWidth = width / lettersChoir.length;
  for (int i = 0; i < lettersChoir.length; i++) {
    lettersChoir[i].draw(i * letterWidth, (int)(height *0.55), letterWidth);
  }
  
  textAlign(CENTER, CENTER);
  text("by Stephen Buchanan and Zarcia Zacheus", width/2, height/2);
}