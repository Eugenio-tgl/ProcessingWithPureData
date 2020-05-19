//Codigo por Eugenio y Gustavo Torres García Luna
import processing.sound.*;
import processing.video.*;

import oscP5.*;
import netP5.*;

boolean caso1 = true, caso2 = false, caso3 = false, caso4 = false;
float r = 255, g = 255, b = 255;

OscP5 oscP5;
//Movie baile;
SoundFile cancion;
Capture baile;

NetAddress direccionRemota;

Flujo p;

void setup(){
  size(1080, 720);
  background(0);
  cursor(CROSS);
  
  String[] cameras = Capture.list();
  
  
  //baile = new Movie(this, "mov3.mp4");
  baile = new Capture(this, 640, 480, cameras[0]);
  baile.start();
  oscP5 = new OscP5(this, 12000);
  
  //cancion = new SoundFile(this, "audio1.mp3");
  //cancion.loop();
  
  direccionRemota = new NetAddress("10.70.61.33", 12000);
  
  p = new Flujo();
}

void draw(){
  background(0);
  p.PantallaInicio();
}

/*void movieEvent(Movie m) {
  if (m == baile)
      baile.read();
}*/

void captureEvent(Capture baile){
  baile.read();
}


void oscEvent(OscMessage theOscMessage) {  
  if (theOscMessage.checkAddrPattern("/a") == true) {
    caso1 = true;
    caso2 = false;
    caso3 = false;
    caso4 = false;
  }

  if (theOscMessage.checkAddrPattern("/s") == true) {
    caso1 = false;
    caso2 = true;
    caso3 = false;
    caso4 = false;
  }
  
  if (theOscMessage.checkAddrPattern("/d") == true) {
    caso1 = false;
    caso2 = false;
    caso3 = true;
    caso4 = false;
  }
  
  if (theOscMessage.checkAddrPattern("/f") == true) {
    caso1 = false;
    caso2 = false;
    caso3 = false;
    caso4 = true;
  }
  
  if (theOscMessage.checkAddrPattern("/r") == true) {
    //asigna el valor entero a la variable t
    r = theOscMessage.get(0).floatValue();
  }
  
  if (theOscMessage.checkAddrPattern("/g") == true) {
    //asigna el valor entero a la variable t
    g = theOscMessage.get(0).floatValue();

  }
  
  if (theOscMessage.checkAddrPattern("/b") == true) {
    //asigna el valor entero a la variable t
    b = theOscMessage.get(0).floatValue();

  }
  
}
