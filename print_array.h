#include <Arduino.h>

void print_array(void *Array, uint16_t x_len, uint16_t y_len) {
  Serial.begin(9600);
  // void Arr;
  void Arr = *(*Array);
  if (y_len != 0) { // check if array is multi-dimensional
    for (int j; j < y_len; j++) {
      for (int i = 0; i < x_len; i++) {
	Serial.print("At index (");
	Serial.print(i);
	Serial.print(", ");
	Serial.print(j);
	Serial.print(": ");
	Serial.println(Arr[j][i]);
      }
    }
  } else {
    for (int i; i < x_len; i++) {
      Serial.print("At index ");
      Serial.print(i);
      Serial.print(": ");
      Serial.println(Arr[i]);
    }
  }
}
