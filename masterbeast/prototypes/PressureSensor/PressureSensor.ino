const int pin = A0;
int initialValue;
int readValue;
int adjustedValue;

void setup() {
  // put your setup code here, to run once:
  pinMode(pin, INPUT);
  initialValue = analogRead(pin);
  Serial.begin(9600);
}

void loop(){
  // put your main code here, to run repeatedly:
  readValue = analogRead(pin);
  adjustedValue = readValue - initialValue;
  Serial.println(adjustedValue);
}
