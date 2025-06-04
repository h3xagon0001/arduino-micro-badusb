#include <Keyboard.h>

char windowsKey = KEY_LEFT_GUI;

void setup() {
  Keyboard.begin();
  //////////// PAYLOAD START ////////////

  delay(1000);  

  // win+r 
  Keyboard.press(windowsKey);
  Keyboard.press('r');
  Keyboard.releaseAll();
  
  delay(100);

  // enter powershell command
  Keyboard.println("https://h3xagon0001.itch.io/pong");

  //////////// PAYLOAD END ////////////
  Keyboard.end();
}

void loop() {
  // put your main code here, to run repeatedly:

}
