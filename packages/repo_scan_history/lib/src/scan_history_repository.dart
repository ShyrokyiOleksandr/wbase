import 'package:kern_domain/kern_domain.dart';
import 'package:repo_scan_history/src/i_scan_history_remote_storage.dart';
import 'package:stor_remote/stor_remote.dart';

class ScanHistoryRepository extends IScanHistoryRepository {
  final IScanHistoryRemoteStorage _iScanHistoryRemoteStorage;

  ScanHistoryRepository({
    required IScanHistoryRemoteStorage iScanHistoryRemoteStorage,
  }) : _iScanHistoryRemoteStorage = iScanHistoryRemoteStorage;

  @override
  Future<List<ScanHistoryItem>> getHistory() async {
    final historyRM = await _iScanHistoryRemoteStorage.getHistory();
    return historyRM.map((historyItemRM) => historyItemRM.toDomain()).toList();
  }

  @override
  Future<void> addToHistory({
    required ScanHistoryItem scanHistoryItem,
  }) async {
    final scanHistoryItemRM = ScanHistoryItemRM(
      id: scanHistoryItem.id,
      watchId: scanHistoryItem.watchId,
      brand: scanHistoryItem.brand,
      model: scanHistoryItem.model,
      date: scanHistoryItem.date,
      photoUrl: scanHistoryItem.photoUrl,
    );
    _iScanHistoryRemoteStorage.addToHistory(scanHistoryItemRM);
  }

  @override
  Future<String> uploadWatchPhoto({
    required String remoteFileName,
    required String localFilePath,
  }) async {
    return await _iScanHistoryRemoteStorage.uploadWatchPhoto(
      remoteFileName: remoteFileName,
      localFilePath: localFilePath,
    );
  }
}
