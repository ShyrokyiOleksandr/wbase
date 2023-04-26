import 'package:get_it/get_it.dart';
import 'package:kern_domain/kern_domain.dart';

import 'i_scan_history_remote_storage.dart';
import 'scan_history_repository.dart';

class ScanHistoryRepositoryServiceLocator {
  const ScanHistoryRepositoryServiceLocator._();

  static Future<void> setup() async {
    GetIt.I.registerFactory<IScanHistoryRepository>(
      () => ScanHistoryRepository(
        iScanHistoryRemoteStorage: GetIt.I<IScanHistoryRemoteStorage>(),
      ),
    );
  }
}
