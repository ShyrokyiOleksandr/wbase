import 'package:feat_profile/feat_profile.dart';
import 'package:feat_scan_history/feat_scan_history.dart';
import 'package:feat_watch_details/feat_watch_details.dart';
import 'package:feat_watch_scanner/feat_watch_scanner.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'widgets/cupertino_tab_screen.dart';

class AppRouter {
  static const routeInformationParser = RoutemasterParser();

  static final RoutemasterDelegate delegate = RoutemasterDelegate(
    routesBuilder: (context) {
      return RouteMap(
        routes: _buildRoutes(routerDelegate: delegate),
      );
    },
  );

  static Map<String, PageBuilder> _buildRoutes({
    required RoutemasterDelegate routerDelegate,
  }) {
    return {
      "/": (_) {
        return const CupertinoTabPage(
          child: CupertinoTabScreen(),
          paths: ["/scanner", "/history", "/profile"],
        );
      },
      "/scanner": (_) {
        return MaterialPage(
          child: WatchScannerScreen(
            onOpenWatchDetailsScreen: (watchId, watchPhotoUrl) {
              _openWatchDetailsScreen(routerDelegate, watchId, watchPhotoUrl);
            },
          ),
        );
      },
      "/history": (_) {
        return MaterialPage(
          child: ScanHistoryScreen(
            onItemTap: (watchId, watchPhotoUrl) {
              _openWatchDetailsScreen(routerDelegate, watchId, watchPhotoUrl);
            },
            onAddWatchPressed: () {
              // todo: implement navigation
            },
          ),
        );
      },
      "/history/:watchId": (info) {
        return MaterialPage(
          child: WatchDetailsScreen(
            watchId: info.pathParameters["watchId"] ?? "watchId",
            watchPhotoUrl: info.queryParameters["watchPhotoUrl"],
            onApplyEstimate: () {
              // todo: implement navigation
            },
            onTapBack: routerDelegate.pop,
          ),
        );
      },
      "/profile": (_) {
        return MaterialPage(child: ProfileMenuScreen());
      }
    };
  }

  static void _openWatchDetailsScreen(
    RoutemasterDelegate routerDelegate,
    String watchId,
    String watchPhotoUrl,
  ) {
    routerDelegate.push(
      "/history/$watchId",
      queryParameters: {"watchPhotoUrl": watchPhotoUrl},
    );
  }
}
