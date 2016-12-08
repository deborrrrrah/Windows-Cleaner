char command;
String string;

  void setup()
  {
   Serial.begin(9600);
  }

  void loop()
  {
    if (Serial.available() > 0) {
      command = "";

      command = ((byte) Serial.read());
      
 
      delay(1);
    
      Serial.println(command);
    }
  }
