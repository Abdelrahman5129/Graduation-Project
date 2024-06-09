#include <SoftwareSerial.h>

#define relay 9
#define ADC_PIN A0
#define RX_PIN 2  // Define the RX pin for SoftwareSerial
#define TX_PIN 3  // Define the TX pin for SoftwareSerial

SoftwareSerial mySerial(RX_PIN, TX_PIN);  // RX, TX

int threshold = 50; // Default threshold to a reasonable value for testing

void setup() {
  pinMode(relay, OUTPUT);
  Serial.begin(9600);
  mySerial.begin(9600);  // Initialize SoftwareSerial
  Serial.println("Setup complete. Awaiting data...");
}

void loop() {
  int val_ADC = analogRead(ADC_PIN);
  int moisturePercentage = map(val_ADC, 422, 169, 0, 100); // Adjust these values based on your sensor calibration
  Serial.print("Moisture Percentage: ");
  Serial.println(moisturePercentage);

  // Check for incoming data from ESP32
  if (mySerial.available()) {
    String input = mySerial.readStringUntil('\n');
    Serial.print("Received input: ");
    Serial.println(input);  // Debug the received input

    if (input.startsWith("THRESHOLD:")) {
      input = input.substring(10); // Remove "THRESHOLD:" prefix
      int newThreshold = input.toInt();

      // Validate the new threshold
      if (newThreshold > 0 && newThreshold < 100) {
        threshold = newThreshold;
        Serial.print("Updated threshold: ");
        Serial.println(threshold);
      } else {
        Serial.println("Received invalid threshold, ignoring.");
      }
    }
  }

  // Control the relay based on the moisture percentage
  if (moisturePercentage < threshold) {
    digitalWrite(relay, HIGH);
    Serial.println("Relay ON");
  } else {
    digitalWrite(relay, LOW);
    Serial.println("Relay OFF");
  }

  // Send moisture percentage back to ESP32
  mySerial.println(moisturePercentage);
  Serial.print("Sent moisturePercentage to ESP32: ");
  Serial.println(moisturePercentage);

  delay(500); // Small delay to ensure proper communication
}