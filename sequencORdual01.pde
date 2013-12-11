import ddf.minim.*;
import processing.serial.*;

Serial[] port = new Serial[10]; //creates object "port[0]" of serial class

String myFirstString = null;
String mySecondString = null;

int [] inFirst;
int [] inSecond;

Minim minim;
AudioPlayer player;
AudioInput in;
AudioRecorder recorder;

long timeStep = 0;
long timeStepIni = 0;
int timeRecTot = 2000;
int oneStep = 500;
int stepCount= 1;

int sampleBox = 0;
boolean recording = false;
boolean dragging = false;
boolean receiving = false;
int buttonState = 0;

int recordPos = 0;

int[] firstSeq = new int[26];
int[] secondSeq = new int[26];


