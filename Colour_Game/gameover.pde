void gameover() {
  background (255, 0, 0);
  fill(#FFFFFF);
  textFont(noSurrender1);
  text("GAME OVER", width/2, 150);

  textFont(noSurrender2);
  textMode(CENTER);
  text("SCORE: " +s, width/2, 400);
  text("HIGH SCORE: " +h, width/2, 500);
  
  if (s >= h) {
    h = s;
  }
  
  wid = 0;
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < 600 && mouseY > 0 && mouseY < 600) {
  mode = INTRO;
  reset();
  }
}
