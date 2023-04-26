import 'package:get_it/get_it.dart';
import 'package:kern_domain/kern_domain.dart';

import 'bloc/scan_history_cubit.dart';

class ScanHistoryServiceLocator {
  ScanHistoryServiceLocator._();

  static Future<void> setup() async {
    // bloc
    GetIt.I.registerFactory<ScanHistoryCubit>(
      () => ScanHistoryCubit(
        getScanHistoryUseCase: GetIt.I<GetScanHistoryUseCase>(),
      ),
    );
  }
}
