import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../domain/preference.dart';

@Injectable(as: Preference)
class SecuredPreference implements Preference {
  static const autoSignInEnabledKey = 'autoSignInEnabled';
  static const storeIdKey = 'storeId';

  final FlutterSecureStorage _storage;

  const SecuredPreference(this._storage);

  @override
  Future<bool> get isAutoSignInEnabled async {
    final isAutoSignInEnabled =
        await _storage.read(key: autoSignInEnabledKey) ?? 'false';
    return isAutoSignInEnabled == 'true';
  }

  @override
  Future<void> setAutoSignIn(bool enabled) {
    return _storage.write(key: autoSignInEnabledKey, value: enabled.toString());
  }

  @override
  Future<String> get savedStoreId async {
    return (await _storage.read(key: storeIdKey))!;
  }

  @override
  Future<void> saveStoreId(String storeId) {
    return _storage.write(key: storeIdKey, value: storeId);
  }
}
