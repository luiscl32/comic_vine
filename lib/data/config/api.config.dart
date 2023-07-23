class ApiKey {
  ApiKey._();
  static const String getApiKey = '555d03ca4abd0ebc2e10d375586dfc3d80422721';
}

class ApiConfig {
  ApiConfig._();
  static String getRequestUrl(String request) {
    return 'https://comicvine.gamespot.com/api/$request/?api_key=${ApiKey.getApiKey}&format=json';
  }
}
