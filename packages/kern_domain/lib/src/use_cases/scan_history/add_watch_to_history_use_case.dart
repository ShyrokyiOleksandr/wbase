import 'package:uuid/uuid.dart';

import '../../entities/scan_history/scan_history_item.dart';
import '../../entities/watch/watch.dart';
import '../../repositories/i_scan_history_repository.dart';

class AddWatchToHistoryUseCase {
  final IScanHistoryRepository _iScanHistoryRepository;

  AddWatchToHistoryUseCase({
    required IScanHistoryRepository iScanHistoryRepository,
  }) : _iScanHistoryRepository = iScanHistoryRepository;

  Future<String> execute({
    required Watch watch,
    required String photoLocalFilePath,
  }) async {
    // same name for ScanHistoryItem id and photo name
    final itemId = Uuid().v4();

    final filePath = await _iScanHistoryRepository.uploadWatchPhoto(
      remoteFileName: itemId,
      localFilePath: photoLocalFilePath,
    );

    final scanHistoryItem = ScanHistoryItem(
      id: itemId,
      watchId: watch.id,
      brand: watch.brand,
      model: watch.model,
      date: DateTime.now(),
      photoUrl: filePath,
    );
    await _iScanHistoryRepository.addToHistory(
      scanHistoryItem: scanHistoryItem,
    );
    return filePath;
  }
}
