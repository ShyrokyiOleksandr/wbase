import 'package:stor_remote/stor_remote.dart';

abstract class IWatchRemoteStorage {
  Future<WatchRM> getWatchById(String id);
}
