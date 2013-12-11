void serialEvent(Serial myPort) {

  if (myPort == port[0]) {

    while (myPort.available () > 0) {
      myFirstString = myPort.readStringUntil('\n');
      if (myFirstString != null) {
        println(myFirstString);

        if (myFirstString != null) {
          myFirstString=trim(myFirstString);
          inFirst = int(split(myFirstString, ','));
        }

        for (int i=0; i<9; i++) {
          println(inFirst[i]);
        }
        for (int i=0; i<8; i++) {
          firstSeq[i] = inFirst[i];
        }
        oneStep = inFirst[8]/2+70;
        buttonState = inFirst[9];
      }
    }
  }
  
  if (myPort == port[1]) {

    while (port[1].available () > 0) {
      mySecondString = port[1].readStringUntil('\n');
      if (mySecondString != null) {
        println(mySecondString);

        if (mySecondString != null) {
          mySecondString=trim(mySecondString);
          inSecond = int(split(mySecondString, ','));
        }

        for (int i=0; i<9; i++) {
          println(inSecond[i]);
        }
        for (int i=0; i<8; i++) {
          secondSeq[i] = inSecond[i];
        }
      }
    }
  }
}

