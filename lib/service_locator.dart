import 'package:feat_profile/feat_profile.dart';
import 'package:feat_scan_history/feat_scan_history.dart';
import 'package:feat_watch_details/feat_watch_details.dart';
import 'package:feat_watch_scanner/feat_watch_scanner.dart';
import 'package:get_it/get_it.dart';
import 'package:kern_domain/kern_domain.dart';
import 'package:repo_scan_history/repo_scan_history.dart';
import 'package:repo_watch/repo_watch.dart';
import 'package:stor_remote/stor_remote.dart';

final getIt = GetIt.instance;

class MainServiceLocator {
  const MainServiceLocator._();

  static Future<void> setup() async {
    // storages
    await RemoteStorageServiceLocator.setup();

    // repositories
    await WatchesRepositoryServiceLocator.setup();
    await ScanHistoryRepositoryServiceLocator.setup();

    // domain
    await DomainServiceLocator.setup();

    // features
    await WatchScannerServiceLocator.setup();
    await WatchDetailsServiceLocator.setup();
    await ScanHistoryServiceLocator.setup();
    await ProfileMenuServiceLocator.setup();
  }
}
