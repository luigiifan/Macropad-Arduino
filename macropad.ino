
#include <Keyboard.h>
#define Pad1 10 //Kanan bawah
#define Pad2 3
#define Pad3 16
#define Pad4 5
#define Pad5 6 //Kanan Atas
#define Pad6 7
#define Pad7 8
#define Pad8 9

void setup() {
  pinMode (Pad1, INPUT_PULLUP);
  pinMode (Pad2, INPUT_PULLUP);
  pinMode (Pad3, INPUT_PULLUP);
  pinMode (Pad4, INPUT_PULLUP);
  pinMode (Pad5, INPUT_PULLUP);
  pinMode (Pad6, INPUT_PULLUP);
  pinMode (Pad7, INPUT_PULLUP);
  pinMode (Pad8, INPUT_PULLUP);
  Keyboard.begin();
}

//void sendMacroCommand(uint8_t key) {
  //Keyboard.press(KEY_LEFT_CTRL);
  //Keyboard.press(KEY_LEFT_SHIFT);
  //Keyboard.press(KEY_LEFT_ALT);
  //Keyboard.press(key);
//}

void loop() {
  if (digitalRead(Pad1) == LOW)
  {
    Keyboard.press(KEY_F5);
    delay(300);
    Keyboard.press(KEY_RETURN);
  }
  if (digitalRead(Pad2) == LOW)
  {
    Keyboard.press(KEY_F2);
  }
  if (digitalRead(Pad3) == LOW)
  {
    Keyboard.press(KEY_F3);
  }
  if (digitalRead(Pad4) == LOW)
  {
    Keyboard.press(KEY_F4);
  }
  if (digitalRead(Pad5) == LOW)
  {
    Keyboard.press(KEY_F5);
  }
  if (digitalRead(Pad6) == LOW)
  {
    Keyboard.press(KEY_F6);
  }
  if (digitalRead(Pad7) == LOW)
  {
    Keyboard.press(KEY_F7);
  }
  if (digitalRead(Pad8) == LOW)
  {
    Keyboard.press(KEY_F8);
  }
  delay(100);
  Keyboard.releaseAll();
 }
