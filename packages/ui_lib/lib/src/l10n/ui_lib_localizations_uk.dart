import 'ui_lib_localizations.dart';

/// The translations for Ukrainian (`uk`).
class UILibraryLocalizationsUk extends UILibraryLocalizations {
  UILibraryLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get tryAgainAction => 'Спробувати ще раз';

  @override
  String get inHandAction => 'Внести дані вручну';

  @override
  String get textFieldPhoneLabel => 'Номер телефону';

  @override
  String get textFieldPhoneHint => 'Введіть ваш номер телефону';
}
