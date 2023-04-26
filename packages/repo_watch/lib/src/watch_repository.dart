import 'package:kern_domain/kern_domain.dart';

import 'i_watch_remote_storage.dart';

class WatchRepository implements IWatchRepository {
  final IWatchRemoteStorage _iWatchRemoteStorage;

  WatchRepository({
    required IWatchRemoteStorage iWatchRemoteStorage,
  }) : _iWatchRemoteStorage = iWatchRemoteStorage;

  @override
  Future<Watch> getWatchById(String watchId) async {
    final watchRM = await _iWatchRemoteStorage.getWatchById(watchId);
    return watchRM.toDomain();
  }
}
