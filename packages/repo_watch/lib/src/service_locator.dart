import 'package:get_it/get_it.dart';
import 'package:kern_domain/kern_domain.dart';
import 'package:repo_watch/src/i_watch_remote_storage.dart';

import 'watch_repository.dart';

class WatchesRepositoryServiceLocator {
  const WatchesRepositoryServiceLocator._();

  static Future<void> setup() async {
    GetIt.I.registerFactory<IWatchRepository>(
      () => WatchRepository(
        iWatchRemoteStorage: GetIt.I<IWatchRemoteStorage>(),
      ),
    );
  }
}
