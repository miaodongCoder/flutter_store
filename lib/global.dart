class Global {
  static final Global _instance = Global._internal();

  factory Global() => _instance;

  Global._internal();

  static Future<void> init() async {}
}
