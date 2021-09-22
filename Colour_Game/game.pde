void game() {
  background (0, 255, 0);
  image(rainbow, 0, 0, 600, 600);
  
  stroke(#FFFFFF);
  fill(#FFFFFF);
  rect(width/2, 0, 300, 600);
  
  textSize(50);
  textFont(noSurrender1);
  textAlign(CENTER, CENTER);
  text("MATCH", width/4, 20);
  fill(0);
  text("NO MATCH", 450, 20);
  
  fill (colors[c]);
  text (word[w], width/2, height/2);
  
  textFont(noSurrender2);
  fill(0);
  text("SCORE:" +s, 500, 570);
  
  strokeWeight(3);
  stroke(0);
  fill(#FFFFFF);
  rect(50, 575, 200, 15);
  
  fill(0);
  rect(50, 575, wid, 15);
  wid = wid + 2;
  if (wid > 200) {
    mode = GAMEOVER;
  }
  
}

void gameClicks() {
 
 if (mouseX < 300) { //match
   if (w==c) {
     s++;
     w = int (random (0, 6));
     c = int (random (0, 6));
     wid = 0;
   }else{
     mode = GAMEOVER;
   }
 } else { //doesn't match
   if (w==c) {
     mode = GAMEOVER;
   }else{
     s++;
     w = int (random (0, 6));
     c = int (random (0, 6));
     wid = 0;
   }
 }
}
