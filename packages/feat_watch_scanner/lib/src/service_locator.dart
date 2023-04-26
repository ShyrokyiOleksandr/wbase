import 'package:get_it/get_it.dart';
import 'package:kern_domain/kern_domain.dart';

import 'watch_scanner_bottom_sheet/watch_scanner_bottom_sheet_cubit.dart';
import 'watch_scanner_screen/watch_scanner_cubit.dart';

class WatchScannerServiceLocator {
  static Future<void> setup() async {
    GetIt.I.registerFactory<WatchScannerCubit>(
      () => WatchScannerCubit(
        addWatchToHistoryUseCase: GetIt.I<AddWatchToHistoryUseCase>(),
      ),
    );

    GetIt.I.registerFactoryParam<WatchScannerBottomSheetCubit, String, void>(
      (watchId, _) => WatchScannerBottomSheetCubit(
        watchId: watchId,
        getWatchDetailsUseCase: GetIt.I<GetWatchDetailsUseCase>(),
      ),
    );
  }
}
