import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

class UserLocalStorage {
  static const _userKey = 'user_data';

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveUser(UserModel user) async {
    final jsonString = jsonEncode(user.toJson());
    await _prefs.setString(_userKey, jsonString);
  }

  Future<UserModel?> getUser() async {
    final jsonString = _prefs.getString(_userKey);

    if (jsonString == null) return null;
    try {
      final Map<String, dynamic> json = jsonDecode(jsonString);
      return UserModel.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  Future<void> clearUser() async {
    await _prefs.remove(_userKey);
  }
}
