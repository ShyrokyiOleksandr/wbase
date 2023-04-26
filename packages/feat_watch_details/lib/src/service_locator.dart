import 'package:get_it/get_it.dart';
import 'package:kern_domain/kern_domain.dart';

import 'bloc/watch_details_cubit.dart';

class WatchDetailsServiceLocator {
  static Future<void> setup() async {
    // bloc
    GetIt.I.registerFactoryParam<WatchDetailsCubit, String, void>(
      (watchId, _) => WatchDetailsCubit(
        watchId: watchId,
        getWatchDetailsUseCase: GetIt.I<GetWatchDetailsUseCase>(),
      ),
    );
  }
}
