import 'package:get_it/get_it.dart';

import 'repositories/i_scan_history_repository.dart';
import 'repositories/i_watch_repository.dart';
import 'use_cases/scan_history/add_watch_to_history_use_case.dart';
import 'use_cases/scan_history/get_scan_history_use_case.dart';
import 'use_cases/watch/get_watch_details_use_case.dart';


class DomainServiceLocator {
  const DomainServiceLocator._();

  static Future<void> setup() async {
    GetIt.I.registerFactory<GetWatchDetailsUseCase>(
          () =>
          GetWatchDetailsUseCase(
            iWatchRepository: GetIt.I<IWatchRepository>(),
          ),
    );
    GetIt.I.registerFactory<GetScanHistoryUseCase>(
          () =>
          GetScanHistoryUseCase(
            iScanHistoryRepository: GetIt.I<IScanHistoryRepository>(),
          ),
    );
    GetIt.I.registerFactory<AddWatchToHistoryUseCase>(
          () =>
          AddWatchToHistoryUseCase(
            iScanHistoryRepository: GetIt.I<IScanHistoryRepository>(),
          ),
    );
  }
}