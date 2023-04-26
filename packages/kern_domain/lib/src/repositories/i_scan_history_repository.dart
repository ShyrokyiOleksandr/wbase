import '../../kern_domain.dart';

abstract class IScanHistoryRepository {
  Future<List<ScanHistoryItem>> getHistory();

  Future<void> addToHistory({
    required ScanHistoryItem scanHistoryItem,
  });

  Future<String> uploadWatchPhoto({
    required String remoteFileName,
    required String localFilePath,
  });
}
