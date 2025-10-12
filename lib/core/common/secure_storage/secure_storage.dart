import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_model.dart';

class SecureStorage {
  SecureStorage({required FlutterSecureStorage storage}) : _storage = storage;
  static const _accessToken = 'access_token';
  static const _refreshToken = 'refresh_token';

  static const _userIdKey = 'user_id';

  final FlutterSecureStorage _storage;

  Future<void> saveToken(JwtModel jwt) async {
    await _storage.write(key: _accessToken, value: jwt.accessToken);
    await _storage.write(key: _refreshToken, value: jwt.refreshToken);
  }

  Future<JwtModel?> getToken() async {
    final accessToken = await _storage.read(key: _accessToken);
    final refreshToken = await _storage.read(key: _refreshToken);

    if (accessToken == null || refreshToken == null) {
      // return JwtModel(
      //   accessToken: 'accessToken',
      //   refreshToken: 'refreshToken',
      // ); //TODO: убрать, когда появится домен
      return null;
    }

    return JwtModel(accessToken: accessToken, refreshToken: refreshToken);
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: _accessToken);
    await _storage.delete(key: _refreshToken);
  }

  Future<void> saveUserId(int id) async {
    await _storage.write(key: _userIdKey, value: id.toString());
  }

  Future<int?> getUserId() async {
    final id = await _storage.read(key: _userIdKey);
    return id != null ? int.tryParse(id) : null;
  }

  Future<void> deleteUserId() async {
    await _storage.delete(key: _userIdKey);
  }

  Future<void> clear() async {
    await _storage.deleteAll();
  }
}
