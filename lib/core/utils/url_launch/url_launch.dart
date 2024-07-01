import 'package:url_launcher/url_launcher.dart' as url_launcher;

enum UriType {
  support,
  hotline,
  faq,
  tutorial,
}

class UrlService {
  static UrlService? _instance;

  factory UrlService() => _instance ??= UrlService._();

  UrlService._();

  Future<bool> _canLaunchUri(Uri uri) async {
    try {
      return await url_launcher.canLaunchUrl(uri);
    } catch (e) {
      return false;
    }
  }

  Uri getUriType(UriType uriType) {
    switch (uriType) {
      case UriType.support:
      case UriType.hotline:
      case UriType.faq:
      case UriType.tutorial:
      default:
        return Uri(scheme: "https", path: "google.com");
    }
  }

  Future<void> launchUrl(UriType uriType) async {
    final uri = getUriType(uriType);
    if (await _canLaunchUri(uri)) {
      switch (uriType) {
        case UriType.support:
        case UriType.hotline:
        case UriType.faq:
        case UriType.tutorial:
        default:
          _supportLink(uri);
      }
    }
  }

  Future<void> _supportLink(Uri uri) async {
    await url_launcher.launchUrl(
      uri,
      mode: url_launcher.LaunchMode.externalApplication,
    );
  }
}
