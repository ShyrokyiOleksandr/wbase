import '../../entities/scan_history/scan_history_item.dart';
import '../../repositories/i_scan_history_repository.dart';

class GetScanHistoryUseCase {
  final IScanHistoryRepository _iScanHistoryRepository;

  GetScanHistoryUseCase({
    required IScanHistoryRepository iScanHistoryRepository,
  }) : _iScanHistoryRepository = iScanHistoryRepository;

  Future<List<ScanHistoryItem>> execute() async {
    return await _iScanHistoryRepository.getHistory();
  }
}
