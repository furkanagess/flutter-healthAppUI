class AppStringConstants {
  static AppStringConstants? _instance;
  static AppStringConstants? get instance {
    if (_instance == null) {
      _instance = AppStringConstants._init();
    }
    return _instance;
  }

  AppStringConstants._init();

  final String hello = "Hello";
  final String categories = "Categories";
}
