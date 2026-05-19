import 'package:flutter/material.dart';

class ARProvider with ChangeNotifier {
  String _currentModel = '';
  bool _isLoading = false;
  double _scale = 1.0;
  double _rotation = 0.0;

  String get currentModel => _currentModel;
  bool get isLoading => _isLoading;
  double get scale => _scale;
  double get rotation => _rotation;

  void loadModel(String modelPath) {
    _isLoading = true;
    notifyListeners();

    // Simulate loading
    Future.delayed(const Duration(seconds: 2), () {
      _currentModel = modelPath;
      _isLoading = false;
      notifyListeners();
    });
  }

  void rotateModel() {
    _rotation += 90.0;
    if (_rotation >= 360.0) _rotation = 0.0;
    notifyListeners();
  }

  void zoomIn() {
    _scale += 0.1;
    notifyListeners();
  }

  void zoomOut() {
    if (_scale > 0.5) _scale -= 0.1;
    notifyListeners();
  }

  void resetModel() {
    _scale = 1.0;
    _rotation = 0.0;
    notifyListeners();
  }
}
