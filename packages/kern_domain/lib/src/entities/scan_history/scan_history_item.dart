import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_history_item.freezed.dart';

@freezed
class ScanHistoryItem with _$ScanHistoryItem {
  const factory ScanHistoryItem({
    required String id,
    required String watchId,
    required String brand,
    required String model,
    required DateTime date,
    required String photoUrl,
  }) = _ScanHistoryItem;
}
