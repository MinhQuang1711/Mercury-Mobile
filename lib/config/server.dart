class ServerConfig {
  final String baseUrl;
  ServerConfig.home() : baseUrl = "-------->IP ADDRESS<-------";
  ServerConfig.motel() : baseUrl = "-------->IP ADDRESS<-------";
  ServerConfig.company() : baseUrl = "http://192.168.2.55:5116";
}

class AppConfig {
  AppConfig._();
  static final instance = AppConfig._();
  late ServerConfig serverConfig;

  void configServer(ServerConfig initConfig) {
    serverConfig = initConfig;
  }
}
