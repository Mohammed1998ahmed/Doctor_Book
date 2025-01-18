import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance =
      SharedPreferencesService._internal();
  factory SharedPreferencesService() => _instance;

  SharedPreferencesService._internal();

  SharedPreferences? _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> setString({required String key, required String value}) async {
    await _preferences?.setString(key, value);
  }

  String? getString({required String key}) {
    return _preferences?.getString(key);
  }

  Future<void> setInt({required String key, required int value}) async {
    await _preferences?.setInt(key, value);
  }

  int? getInt({required String key}) {
    return _preferences?.getInt(key);
  }

  Future<void> setBool({required String key, required bool value}) async {
    await _preferences?.setBool(key, value);
  }

  bool? getBool({required String key}) {
    return _preferences?.getBool(key);
  }

  Future<void> remove({required String key}) async {
    await _preferences?.remove(key);
  }
}
