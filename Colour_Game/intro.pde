void intro() {
   image(gif[f], 0, 0, width, height);
   f = f+ 1;
   if (f == numberOfFrames) f = 0;
   
   textAlign(CENTER, CENTER);
   textSize(75);
   textFont(noSurrender);
   fill(#FFFFFF);
   text("Color Game", width/2, height/2);
}

void introClicks() {
  if (mouseX > 0 && mouseX < 600 && mouseY > 0 && mouseY < 600) {
    mode = GAME;
    
   w = int (random (0, 6));
   c = int (random (0, 6));
  }
}
