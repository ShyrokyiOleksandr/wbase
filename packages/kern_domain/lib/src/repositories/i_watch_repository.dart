import '../entities/watch/watch.dart';

abstract class IWatchRepository {
  Future<Watch> getWatchById(String watchId);

  // todo: Future<void> uploadWatchPhoto();
}
