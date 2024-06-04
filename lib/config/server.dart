class ServerConfig {
  final String baseUrl;
  ServerConfig.home() : baseUrl = "-------->IP ADDRESS<-------";
  ServerConfig.motel() : baseUrl = "-------->IP ADDRESS<-------";
  ServerConfig.company() : baseUrl = "https://192.168.3.30:7291";
}

class AppConfig {
  AppConfig._();
  static final instance = AppConfig._();
  late ServerConfig serverConfig;

  void configServer(ServerConfig initConfig) {
    serverConfig = initConfig;
  }
}
