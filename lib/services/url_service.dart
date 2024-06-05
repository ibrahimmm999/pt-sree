class UrlService {
  final String _productUrl = 'https://tradeasia.sg//en/';
  // String _baseUrl = '';
  // Uri api(String param) {
  //   return Uri.parse(baseUrl + param);
  // }
  Uri productApi(String param) {
    return Uri.parse(_productUrl + param);
  }
}
