import 'package:flutter/material.dart';

abstract class ILocalizationManager {
  String? localePath;
  List<Locale> get supportedLocales;
  LocalizationEnum currentLocale = LocalizationEnum.vietnamese;
}

enum LocalizationEnum {
  vietnamese,
  english,
}

extension LocalizationExtension on LocalizationEnum {
  Locale? get translate {
    switch (this) {
      case LocalizationEnum.vietnamese:
        return LocalizationManager.instance.viVNLocale;
      case LocalizationEnum.english:
        return LocalizationManager.instance.enUSLocale;
      default:
        return LocalizationManager.instance.viVNLocale;
    }
  }
}

class LocalizationManager implements ILocalizationManager {
  static LocalizationManager? _instance;
  static LocalizationManager get instance {
    _instance ??= LocalizationManager._init();
    return _instance!;
  }

  LocalizationManager._init();

  @override
  String? localePath = 'assets/translations';

  final enUSLocale = const Locale('en', 'US');
  final viVNLocale = const Locale('vi', 'VN');

  @override
  List<Locale> get supportedLocales => [enUSLocale, viVNLocale];

  @override
  LocalizationEnum currentLocale = LocalizationEnum.vietnamese;
}
