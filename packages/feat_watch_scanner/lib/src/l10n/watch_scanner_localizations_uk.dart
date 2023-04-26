import 'watch_scanner_localizations.dart';

/// The translations for Ukrainian (`uk`).
class WatchScannerLocalizationsUk extends WatchScannerLocalizations {
  WatchScannerLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get scannerScreenNormalizeMessage => 'Розташуйте годинник, щоб лице корпусу співпало з контуром. Коли контур стане зеленим - зробіть фото.';

  @override
  String get scannerBottomSheetTitle => 'Схоже, що ваш годинник';

  @override
  String get scannerBottomSheetOpenWatchDetailsAction => 'Переглянути деталі';

  @override
  String get scannerBottomSheetTryAgainAction => 'Cпробувати ще раз';

  @override
  String get scannerBottomSheetModelUndefinedMessage => 'Нажаль модель не визначено ';

  @override
  String get scannerBottomSheetUseWatchExpertMessage => 'Ви можете скористатись сервісом WatchExpert24 для продажу чи купівлі годинників';

  @override
  String get scannerBottomSheetInHandAction => 'Внести дані вручну';
}
