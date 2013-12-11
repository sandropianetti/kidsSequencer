void setup() {

  println(Serial.list());

for (int i=0; i<Serial.list().length; i++){

  port[i] = new Serial(this, Serial.list()[i], 9600);
  port[i].bufferUntil('\n');
  port[i].clear();
  // Throw out the first reading, in case we started reading 
  // in the middle of a string from the sender.
}

for (int i = 0; i<port.length; i++){
  println("porta"+port[i]);}

  size(1300, 800);
  background(255);

  minim = new Minim(this);
  timeStepIni = millis();

  in = minim.getLineIn(Minim.MONO, 1024, 8000, 8);
}

