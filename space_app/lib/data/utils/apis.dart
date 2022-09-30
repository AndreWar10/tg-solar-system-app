class API {
  //API Sistema Solar 
  static const String solarSystemBaseUrl = 'https://api-solar-system.herokuapp.com/planets';
  static String solarSystem = solarSystemBaseUrl;
  //API Notícias Astronômicas
  static const String newsBaseUrl = 'https://api.spaceflightnewsapi.net/v3/articles';
  static String news = newsBaseUrl;
  //API Exoplanetas
  static const String exoplanetBaseUrl = 'https://exoplanet-api.herokuapp.com/exoplanet/';
  static String exoplanet = exoplanetBaseUrl;








  // //headers API
  // static const Map<String, String> defaultHeaders = {
  //   'token':
  //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'
  // };
  
  // // Transações
  // static String statement(int defautLimit, int offset) => '$solarSystemBaseUrl/myStatement/$defautLimit/$offset';
  // static String statementDetail(String id) => '$solarSystemBaseUrl/myStatement/detail/$id';
}