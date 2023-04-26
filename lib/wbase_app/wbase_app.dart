import 'package:feat_profile/feat_profile.dart';
import 'package:feat_scan_history/feat_scan_history.dart';
import 'package:feat_watch_details/feat_watch_details.dart';
import 'package:feat_watch_scanner/feat_watch_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ui_lib/ui_lib.dart';
import 'package:wbase/wbase_app/app_router.dart';

class WBaseApp extends StatelessWidget {
  static const appTitle = "WBase";

  const WBaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: WBaseApp.appTitle,
      supportedLocales: const [
        Locale('uk', ''),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: UILibColors.white,
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        UILibraryLocalizations.delegate,
        WatchScannerLocalizations.delegate,
        WatchDetailsLocalizations.delegate,
        ScanHistoryLocalizations.delegate,
        ProfileLocalizations.delegate,
      ],
      routeInformationParser: AppRouter.routeInformationParser,
      routerDelegate: AppRouter.delegate,
    );
  }
}
