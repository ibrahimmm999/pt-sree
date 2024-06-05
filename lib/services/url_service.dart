class UrlService {
  final String _productUrl = 'https://tradeasia.sg//en/dipentene';
  // String _baseUrl = '';
  // Uri api(String param) {
  //   return Uri.parse(baseUrl + param);
  // }
  Uri productApi() {
    return Uri.parse(_productUrl);
  }
}
