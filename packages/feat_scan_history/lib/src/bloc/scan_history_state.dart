import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kern_domain/kern_domain.dart';

part 'scan_history_state.freezed.dart';

@freezed
class ScanHistoryState with _$ScanHistoryState {
  const factory ScanHistoryState({
    required List<ScanHistoryItem> history,
    required bool isLoading,
    required Exception? loadingException,
  }) = _ScanHistoryState;

  factory ScanHistoryState.initial() {
    return const ScanHistoryState(
      history: [],
      isLoading: false,
      loadingException: null,
    );
  }
}
