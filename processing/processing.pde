import processing.serial.*;
Serial myPort;  // Create object from Serial class
char val;
int x = 0; 
int y = 0; 
PImage tool ;
PImage bg ;

void setup() {
  size(1000, 1000); 
  bg = loadImage("kaca.png");
  tool = loadImage("alat.png");
  String portName = Serial.list()[0];
  myPort = new Serial(this, "COM4", 9600);
  myPort.bufferUntil('\n');
}
void draw() {
  background(bg);
  image(tool, x, y, 250, 250);
  /*val=int(myPort.readStringuntil('\n'));*/
  println(val);
    if (val == '1') {
      y -= 2;  
      x -= 0;
    } else if (val == '2') {
      y += 2; 
      x += 0;
    } else if (val == '3') {
      x -= 2; 
      y -= 0;
    } else if (val == '4') {
      x += 2; 
      y += 0;
    }
  
}
void serialEvent(Serial myPort)
{   
      val = char(myPort.read());
      
}
  