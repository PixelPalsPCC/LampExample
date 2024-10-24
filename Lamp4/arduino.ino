//This Code is Developed by Sdev
//Follow Us Here : https://youtube.com/sdevelectronics
//georgemck added digitalWrite(LED_BUILTIN, HIGH); 
//georgemck added  digitalWrite(LED_BUILTIN, LOW);

#define led1 4    //red
#define led2 3    //green
#define led3 2    //blue

void setup() {
  Serial.begin(9600);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
  if (Serial.available()) {
    char val = Serial.read();
    if (val == 'R') {
      digitalWrite(led1, HIGH);
      digitalWrite(LED_BUILTIN, HIGH);
    }
    if (val == 'r') {
      digitalWrite(led1, LOW);
      digitalWrite(LED_BUILTIN, LOW);
    }
    if (val == 'G') {
      digitalWrite(led2, HIGH);
      digitalWrite(LED_BUILTIN, HIGH);
    }
    if (val == 'g') {
      digitalWrite(led2, LOW);
      digitalWrite(LED_BUILTIN, LOW);
    }
    if (val == 'B') {
      digitalWrite(led3, HIGH);
      digitalWrite(LED_BUILTIN, HIGH);
    }
    if (val == 'b') {
      digitalWrite(led3, LOW);
      digitalWrite(LED_BUILTIN, LOW);
    }
  }
}
