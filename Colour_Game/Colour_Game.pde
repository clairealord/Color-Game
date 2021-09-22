//Claire Lord
//colour game
//september 16, 2021

PFont noSurrender;
PFont noSurrender1;
PFont noSurrender2;

PImage rainbow;
PImage[] gif;
int numberOfFrames;
int f;
int i;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//colours ---------------------------------
color red = #FF0000;
color orange = #FF8000;
color yellow = #FFF300;
color green = #03FF00;
color blue = #001BFF;
color purple = #C700FF;

String[] word;
color[] colors;

int w, c, s, h, wid;

void setup() {
  size(600, 600);
  mode = INTRO;
  
  numberOfFrames = 5;
  gif = new PImage [numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.06s.gif");
    i++;
  }
  
  wid = 0;
  
  //------------LOAD IMAGES
  rainbow = loadImage("rainbow.jpg");
    
  noSurrender = createFont("No Surrender.ttf", 75);
  noSurrender1 = createFont("No Surrender.ttf", 50);
  noSurrender2 = createFont("No Surrender.ttf", 30);
  
  word = new String[6];
  colors = new color[6];
  
  word[0] = "red";
  word[1] = "orange";
  word[2] = "yellow";
  word[3] = "green";
  word[4] = "blue";
  word[5] = "purple";
  
  colors[0] = red;
  colors[1] = orange;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = blue;
  colors[5] = purple;
}

void draw() {
  if (mode == INTRO) {
  intro();
  }else if (mode == GAME) {
  game();
  }else if (mode == GAMEOVER) {
  gameover();
  }else {
    println("error: mode = " +mode);
  }
}

void reset() {
  s = 0;
}
