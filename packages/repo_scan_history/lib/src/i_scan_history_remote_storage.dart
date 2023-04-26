import 'package:stor_remote/stor_remote.dart';

abstract class IScanHistoryRemoteStorage {
  Future<List<ScanHistoryItemRM>> getHistory();

  Future<void> addToHistory(ScanHistoryItemRM scanHistoryItemRM);

  Future<String> uploadWatchPhoto({
    required String remoteFileName,
    required String localFilePath,
  });
}
