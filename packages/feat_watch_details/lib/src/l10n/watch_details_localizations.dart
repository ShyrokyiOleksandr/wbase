import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'watch_details_localizations_uk.dart';

/// Callers can lookup localized strings with an instance of WatchDetailsLocalizations
/// returned by `WatchDetailsLocalizations.of(context)`.
///
/// Applications need to include `WatchDetailsLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/watch_details_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: WatchDetailsLocalizations.localizationsDelegates,
///   supportedLocales: WatchDetailsLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the WatchDetailsLocalizations.supportedLocales
/// property.
abstract class WatchDetailsLocalizations {
  WatchDetailsLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static WatchDetailsLocalizations of(BuildContext context) {
    return Localizations.of<WatchDetailsLocalizations>(context, WatchDetailsLocalizations)!;
  }

  static const LocalizationsDelegate<WatchDetailsLocalizations> delegate = _WatchDetailsLocalizationsDelegate();

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

  /// No description provided for @titleMessage.
  ///
  /// In uk, this message translates to:
  /// **'Модель вашого годинника:'**
  String get titleMessage;

  /// No description provided for @applyForEstimateAction.
  ///
  /// In uk, this message translates to:
  /// **'Замовити оцінку годинника'**
  String get applyForEstimateAction;

  /// No description provided for @monthsEnding.
  ///
  /// In uk, this message translates to:
  /// **'місяців'**
  String get monthsEnding;

  /// No description provided for @sectionMainCharacteristics.
  ///
  /// In uk, this message translates to:
  /// **'Основні характеристики'**
  String get sectionMainCharacteristics;

  /// No description provided for @paramGender.
  ///
  /// In uk, this message translates to:
  /// **'Стать'**
  String get paramGender;

  /// No description provided for @paramModel.
  ///
  /// In uk, this message translates to:
  /// **'Модель'**
  String get paramModel;

  /// No description provided for @paramWarranty.
  ///
  /// In uk, this message translates to:
  /// **'Гарантія'**
  String get paramWarranty;

  /// No description provided for @paramBrand.
  ///
  /// In uk, this message translates to:
  /// **'Бренд'**
  String get paramBrand;

  /// No description provided for @paramCollection.
  ///
  /// In uk, this message translates to:
  /// **'Колекція'**
  String get paramCollection;

  /// No description provided for @paramVersion.
  ///
  /// In uk, this message translates to:
  /// **'Версія'**
  String get paramVersion;

  /// No description provided for @paramGlass.
  ///
  /// In uk, this message translates to:
  /// **'Скло'**
  String get paramGlass;

  /// No description provided for @paramTimeFormat.
  ///
  /// In uk, this message translates to:
  /// **'Формат часу'**
  String get paramTimeFormat;

  /// No description provided for @paramState.
  ///
  /// In uk, this message translates to:
  /// **'Стан'**
  String get paramState;

  /// No description provided for @sectionMechanism.
  ///
  /// In uk, this message translates to:
  /// **'Механізм'**
  String get sectionMechanism;

  /// No description provided for @paramType.
  ///
  /// In uk, this message translates to:
  /// **'Тип'**
  String get paramType;

  /// No description provided for @paramCountry.
  ///
  /// In uk, this message translates to:
  /// **'Країна'**
  String get paramCountry;

  /// No description provided for @sectionDial.
  ///
  /// In uk, this message translates to:
  /// **'Циферблат'**
  String get sectionDial;

  /// No description provided for @paramDialColor.
  ///
  /// In uk, this message translates to:
  /// **'Колір циферблату'**
  String get paramDialColor;

  /// No description provided for @paramIndexView.
  ///
  /// In uk, this message translates to:
  /// **'Вид індексації'**
  String get paramIndexView;

  /// No description provided for @paramIndexType.
  ///
  /// In uk, this message translates to:
  /// **'Тип індексації'**
  String get paramIndexType;

  /// No description provided for @sectionCase.
  ///
  /// In uk, this message translates to:
  /// **'Корпус'**
  String get sectionCase;

  /// No description provided for @paramCaseDiameter.
  ///
  /// In uk, this message translates to:
  /// **'Діметр корпусу'**
  String get paramCaseDiameter;

  /// No description provided for @paramCaseMaterial.
  ///
  /// In uk, this message translates to:
  /// **'Матеріал корпусу'**
  String get paramCaseMaterial;

  /// No description provided for @paramCaseColor.
  ///
  /// In uk, this message translates to:
  /// **'Колір копусу'**
  String get paramCaseColor;

  /// No description provided for @paramCaseShape.
  ///
  /// In uk, this message translates to:
  /// **'Форма корпусу'**
  String get paramCaseShape;

  /// No description provided for @paramWaterResistance.
  ///
  /// In uk, this message translates to:
  /// **'Водостійкість'**
  String get paramWaterResistance;

  /// No description provided for @paramCaseHeight.
  ///
  /// In uk, this message translates to:
  /// **'Товщина'**
  String get paramCaseHeight;

  /// No description provided for @paramCaseWeight.
  ///
  /// In uk, this message translates to:
  /// **'Вага'**
  String get paramCaseWeight;

  /// No description provided for @sectionBracelet.
  ///
  /// In uk, this message translates to:
  /// **'Браслет'**
  String get sectionBracelet;

  /// No description provided for @paramBraceletOrBelt.
  ///
  /// In uk, this message translates to:
  /// **'Браслет/Ремінець'**
  String get paramBraceletOrBelt;

  /// No description provided for @paramBraceletMaterial.
  ///
  /// In uk, this message translates to:
  /// **'Матеріал'**
  String get paramBraceletMaterial;

  /// No description provided for @sectionExtraCharacteristics.
  ///
  /// In uk, this message translates to:
  /// **'Додаткові характеристики'**
  String get sectionExtraCharacteristics;

  /// No description provided for @paramAntiGlare.
  ///
  /// In uk, this message translates to:
  /// **'Антивідблискування'**
  String get paramAntiGlare;

  /// No description provided for @paramDateIndex.
  ///
  /// In uk, this message translates to:
  /// **'Індикація дати'**
  String get paramDateIndex;
}

class _WatchDetailsLocalizationsDelegate extends LocalizationsDelegate<WatchDetailsLocalizations> {
  const _WatchDetailsLocalizationsDelegate();

  @override
  Future<WatchDetailsLocalizations> load(Locale locale) {
    return SynchronousFuture<WatchDetailsLocalizations>(lookupWatchDetailsLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_WatchDetailsLocalizationsDelegate old) => false;
}

WatchDetailsLocalizations lookupWatchDetailsLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'uk': return WatchDetailsLocalizationsUk();
  }

  throw FlutterError(
    'WatchDetailsLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
