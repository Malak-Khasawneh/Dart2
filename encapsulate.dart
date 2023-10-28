class TemperatureSensor {
  double _tempCelsius = 0;

  // Constructor
  TemperatureSensor(double initialTemp) {
    if (initialTemp >= -40 && initialTemp <= 40) {
      _tempCelsius = initialTemp;
    } else {
      print("Initial temperature must be between -40°C and 40.");
    }
  }

  // Getter for temperature in Celsius
  double get tempCelsius => _tempCelsius;

  // Getter for temperature in Fahrenheit
  double get tempFahrenheit => _tempCelsius * 9 / 5 + 32;

  // Setter for temperature in Celsius
  set tempCelsius(double newTemperature) {
    if (newTemperature >= -50 && newTemperature <= 50) {
      _tempCelsius = newTemperature;
    } else {
      print("Temperature must be between -40°C and 40°C.");
    }
  }

  // set temperature in Fahrenheit
  void setTempFahrenheit(double newTemperature) {
    // Convert Fahrenheit to Celsius
    double celsiusEquivalent = (newTemperature - 32) * 5 / 9;
    if (celsiusEquivalent >= -50 && celsiusEquivalent <= 50) {
      _tempCelsius = celsiusEquivalent;
    } else {
      print("Temperature must be between -40°C and 40°C.");
    }
  }
}

void main() {
  // Create a TemperatureSensor object
  final sensor = TemperatureSensor(25.0);

  // Access and modify temperature data using getters and setters
  print("Temperature in Celsius: ${sensor.tempCelsius}°C");
  print("Temperature in Fahrenheit: ${sensor.tempFahrenheit}°F");

  sensor.tempCelsius = 30.0; // Set a new temperature in Celsius
  print("Updated Temperature in Celsius: ${sensor.tempCelsius}°C");

  sensor.setTempFahrenheit(86.0); // Set temperature in Fahrenheit
  print(
      "Updated Temperature in Celsius (from Fahrenheit): ${sensor.tempCelsius}°C");
}
