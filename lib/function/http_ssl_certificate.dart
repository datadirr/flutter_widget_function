import 'dart:io';

class _HttpSSLCertificateOverrides extends HttpOverrides {
  final bool? badCertificate;

  _HttpSSLCertificateOverrides({this.badCertificate});

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) =>
              badCertificate ?? false;
  }
}

class HttpSSLCertificate {
  static enable() {
    HttpOverrides.global = _HttpSSLCertificateOverrides(badCertificate: false);
  }

  static disable() {
    HttpOverrides.global = _HttpSSLCertificateOverrides(badCertificate: true);
  }
}
