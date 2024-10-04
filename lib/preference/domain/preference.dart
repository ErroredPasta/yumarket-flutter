abstract class Preference {
  Future<bool> get isAutoSignInEnabled;
  Future<void> setAutoSignIn(bool enabled);
  Future<String> get savedStoreId;
  Future<void> saveStoreId(String storeId);
}