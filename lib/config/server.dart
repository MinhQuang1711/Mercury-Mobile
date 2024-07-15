class ServerConfig {
  String baseUrl;
  String _domain = "";
  final String _port = "5116";
  final String _protocol = "http://";

  ServerConfig(this.baseUrl);
  ServerConfig.home() : baseUrl = "http://192.168.1.3:5116";
  ServerConfig.motel() : baseUrl = "-------->IP ADDRESS<-------";
  ServerConfig.company() : baseUrl = "http://192.168.2.22:5116";

  void setDomain(String domain) {
    _domain = domain;
    baseUrl = "$_protocol$_domain:$_port";
  }

  String get getDomain => _domain;
}

class AppConfig {
  AppConfig._();
  static final instance = AppConfig._();
  late ServerConfig serverConfig;

  void configServer(ServerConfig initConfig) {
    serverConfig = initConfig;
  }
}
