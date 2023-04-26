import 'package:flutter/cupertino.dart';
import 'package:routemaster/routemaster.dart';
import 'package:ui_lib/ui_lib.dart';

class CupertinoTabScreen extends StatelessWidget {
  static const _assetPackageName = "ui_lib";
  static const _activeColor = UILibColors.blue;

  const CupertinoTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);

    return CupertinoTabScaffold(
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              UILibAssets.icWatchScanner,
              color: tabState.index == 0 ? _activeColor : null,
              package: _assetPackageName,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              UILibAssets.icScanHistory,
              color: tabState.index == 1 ? _activeColor : null,
              package: _assetPackageName,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              UILibAssets.icProfile,
              color: tabState.index == 2 ? _activeColor : null,
              package: _assetPackageName,
            ),
          ),
        ],
      ),
    );
  }
}
