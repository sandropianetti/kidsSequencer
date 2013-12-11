// stop recording when mouse right is released
void mouseReleased() {
  if (mouseButton == RIGHT) {
    if ( recording ==true) {
      recorder.endRecord();
      recorder.save();
      println("Done saving.");
 recording=false;
    }
  }
  else if (mouseButton == LEFT)

    if (dragging == true) {
      for (int i=0; i<3; i++)
      {
        for (int j=1; j<9; j++)
        {
          if (mouseX>100*j && mouseX<50+100*j && mouseY>100+100*i && mouseY<150+100*i)
          {


            firstSeq[i*8+j]=sampleBox;
            sampleBox = 0;
          }
        }
      }
    }
  dragging = false;
}


