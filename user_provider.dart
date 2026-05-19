import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _userName = 'Explorer';
  List<String> _recentTopics = [];
  List<String> _favoriteTopics = [];

  String get userName => _userName;
  List<String> get recentTopics => _recentTopics;
  List<String> get favoriteTopics => _favoriteTopics;

  void addRecentTopic(String topic) {
    _recentTopics.remove(topic);
    _recentTopics.insert(0, topic);
    if (_recentTopics.length > 10) _recentTopics.removeLast();
    notifyListeners();
  }

  void toggleFavorite(String topic) {
    if (_favoriteTopics.contains(topic)) {
      _favoriteTopics.remove(topic);
    } else {
      _favoriteTopics.add(topic);
    }
    notifyListeners();
  }

  bool isFavorite(String topic) => _favoriteTopics.contains(topic);

  void clearHistory() {
    _recentTopics.clear();
    notifyListeners();
  }
}
