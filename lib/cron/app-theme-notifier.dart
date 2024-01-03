import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeNotifier extends ChangeNotifier {
  final String key = 'theme';
  SharedPreferences? _prefs;
  late bool _darkTheme;

  bool get isDarkTheme => _darkTheme;

  AppThemeNotifier() {
    _darkTheme = true;
    _loadFromPrefs();
  }

  void switchThemeLight() {
    _darkTheme = false;
    _saveToPrefs();

    notifyListeners();
  }

  void switchThemeDark() {
    _darkTheme = true;
    _saveToPrefs();
    notifyListeners();
  }

  void _loadFromPrefs() async {
    await _initiateprefs();
    _darkTheme = _prefs?.getBool(key) ?? true;
    notifyListeners();
  }

  void _saveToPrefs() async {
    await _initiateprefs();
    _prefs?.setBool(key, _darkTheme);
  }

  _initiateprefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }
}
