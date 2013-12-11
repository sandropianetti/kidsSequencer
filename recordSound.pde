void recordSound() {
println("begin record");
  fill(0);
 rect(100,100,100, 100);
  long timeRecIni = millis();
  long timeRec = 0;
  

  recorder = minim.createRecorder(in, "first/1.wav", true);
  recorder.beginRecord();

  while (timeRec < timeRecTot) {
    //println("in the while");
    timeRec = millis() - timeRecIni;

  }
  recorder.endRecord();
  recorder.save();
  println("Done saving.");

}

