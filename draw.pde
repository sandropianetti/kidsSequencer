void draw() {
  //println("begin draw");


  // set timeStep

  timeStep = millis() - timeStepIni;

  // event happening each time oneStep time passes (play sounds)

  if (timeStep > oneStep) {

    timeStep = 0;
    timeStepIni = millis();

    //PLAY

    for (int i=0; i<3; i++)
    {

      if (firstSeq[i*8+stepCount] != 0) {
        player = minim.loadFile("first/"+firstSeq[i*8+stepCount]+".wav");
        player.play();
        println("playing "+firstSeq[i*8+stepCount]+".wav first");
      }
      if (secondSeq[i*8+stepCount] != 0) {
        player = minim.loadFile("second/"+secondSeq[i*8+stepCount]+".wav");
        player.play();
        println("playing "+secondSeq[i*8+stepCount]+".wav second");
      }
    }
    stepCount++;
    // reset conter when higher than 8
    if (stepCount==9) {
      stepCount=1;
    }
  }


  // Draw stuff

  background(255);

  // red indicator line (fixed becouse it would be one step foward, lag?)
  fill(255, 0, 0);
  noStroke();
  if (stepCount >1 ) {
    rect(20+100*(stepCount-1), 0, 10, height);
  }
  else {
    rect(820, 0, 10, height);
  }
  // draw samples squares

  for (int i=1; i<11 ; i++) {

    stroke(0, 0, 0);
    fill(255-25*i, 35*i, 20*i);
    rect(1100, 60*i-50, 50, 50);
  }

  // draw firstSeq squares
  for (int i=0; i<3; i++)
  {
    for (int j=1; j<9; j++)
    {
      if (firstSeq[i*8+j]==0) 
      {
        fill(0, 0, 0);
      }
      else {
        int sam = firstSeq[i*8+j];
        fill(255-25*sam, 35*sam, 20*sam);
      }
      stroke(0, 0, 0);
      rect(100*j, 100+100*i, 50, 50);
    }
  }

  //draw dragged squares
  if (dragging == true) {

    if (sampleBox !=0) {
      fill(255-25*(sampleBox), 35*(sampleBox), 20*(sampleBox));
      rect(mouseX-25, mouseY-25, 50, 50);
    }
  }
    if (buttonState == 1) {
    background(255, 0, 0);
    rect(0, 0, 300, 300);
    buttonState = 0;
    recordSound();
  }
}

