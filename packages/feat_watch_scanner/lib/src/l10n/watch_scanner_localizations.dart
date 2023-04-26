import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'watch_scanner_localizations_uk.dart';

/// Callers can lookup localized strings with an instance of WatchScannerLocalizations
/// returned by `WatchScannerLocalizations.of(context)`.
///
/// Applications need to include `WatchScannerLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/watch_scanner_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: WatchScannerLocalizations.localizationsDelegates,
///   supportedLocales: WatchScannerLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the WatchScannerLocalizations.supportedLocales
/// property.
abstract class WatchScannerLocalizations {
  WatchScannerLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static WatchScannerLocalizations of(BuildContext context) {
    return Localizations.of<WatchScannerLocalizations>(context, WatchScannerLocalizations)!;
  }

  static const LocalizationsDelegate<WatchScannerLocalizations> delegate = _WatchScannerLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('uk')
  ];

  /// No description provided for @scannerScreenNormalizeMessage.
  ///
  /// In uk, this message translates to:
  /// **'Розташуйте годинник, щоб лице корпусу співпало з контуром. Коли контур стане зеленим - зробіть фото.'**
  String get scannerScreenNormalizeMessage;

  /// No description provided for @scannerBottomSheetTitle.
  ///
  /// In uk, this message translates to:
  /// **'Схоже, що ваш годинник'**
  String get scannerBottomSheetTitle;

  /// No description provided for @scannerBottomSheetOpenWatchDetailsAction.
  ///
  /// In uk, this message translates to:
  /// **'Переглянути деталі'**
  String get scannerBottomSheetOpenWatchDetailsAction;

  /// No description provided for @scannerBottomSheetTryAgainAction.
  ///
  /// In uk, this message translates to:
  /// **'Cпробувати ще раз'**
  String get scannerBottomSheetTryAgainAction;

  /// No description provided for @scannerBottomSheetModelUndefinedMessage.
  ///
  /// In uk, this message translates to:
  /// **'Нажаль модель не визначено '**
  String get scannerBottomSheetModelUndefinedMessage;

  /// No description provided for @scannerBottomSheetUseWatchExpertMessage.
  ///
  /// In uk, this message translates to:
  /// **'Ви можете скористатись сервісом WatchExpert24 для продажу чи купівлі годинників'**
  String get scannerBottomSheetUseWatchExpertMessage;

  /// No description provided for @scannerBottomSheetInHandAction.
  ///
  /// In uk, this message translates to:
  /// **'Внести дані вручну'**
  String get scannerBottomSheetInHandAction;
}

class _WatchScannerLocalizationsDelegate extends LocalizationsDelegate<WatchScannerLocalizations> {
  const _WatchScannerLocalizationsDelegate();

  @override
  Future<WatchScannerLocalizations> load(Locale locale) {
    return SynchronousFuture<WatchScannerLocalizations>(lookupWatchScannerLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_WatchScannerLocalizationsDelegate old) => false;
}

WatchScannerLocalizations lookupWatchScannerLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'uk': return WatchScannerLocalizationsUk();
  }

  throw FlutterError(
    'WatchScannerLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
