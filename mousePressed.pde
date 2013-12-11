void mousePressed() {

  if (mouseButton == LEFT) {

    // check if it's on the sequencer

    for (int i=0; i<3; i++)
    {
      for (int j=1; j<9; j++)
      {
        if (mouseX>100*j && mouseX<50+100*j && mouseY>100+100*i && mouseY<150+100*i)
        {
          if (firstSeq[i*8+j] != 0) {
            sampleBox=firstSeq[i*8+j];   //tell him you clicked a colored square
            dragging = true;
            firstSeq[i*8+j]=0;
          }
        }
      }
    }
    // check if the click it's on the sampler

    for (int i=0; i<10; i++) {
      if (mouseX>1100 && mouseX<1150 && mouseY>10+60*i && mouseY<60+60*i) {
        sampleBox=i+1;
        dragging = true;
      }
    }
  }
  else if (mouseButton == RIGHT) {

    for (int i=0; i<10; i++)
    {
      if (mouseX>1100 && mouseX<1150 && mouseY>10+60*i && mouseY<60+60*i) {



        recorder = minim.createRecorder(in, i+1+".wav", true);
        recorder.beginRecord();

        recording=true;
      }
    }
    // delete squares in firstSeq
    for (int i=0; i<3; i++)
    {
      for (int j=1; j<9; j++)
      {
        if (mouseX>100*j && mouseX<50+100*j && mouseY>100+100*i && mouseY<150+100*i)
        {
          firstSeq[i*8+j] = 0;
        }
      }
    }
  }
}


