import 'package:mvc_pattern/mvc_pattern.dart';
import 'model.dart';

class Controller extends ControllerMVC {
  static Controller? _this; // Initialize _this as nullable

  // Factory constructor
  factory Controller() {
    _this ??= Controller._(); // Use null-aware operator to initialize if null
    return _this!;
  }

  Controller._(); // Private constructor

  int get counter => Model.counter;

  void incrementCounter() {
    Model.incrementCounter();
  }

  void decrementCounter() {
    Model.decrementCounter();
  }
}
