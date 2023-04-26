import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kern_domain/kern_domain.dart';

part 'watch_scanner_bottom_sheet_state.freezed.dart';

@freezed
class WatchScannerBottomSheetState with _$WatchScannerBottomSheetState {
  const factory WatchScannerBottomSheetState({
    required Watch? watch,
    required bool isLoading,
    required Exception? loadingException,
  }) = _WatchScannerBottomSheetState;

  factory WatchScannerBottomSheetState.initial() {
    return const WatchScannerBottomSheetState(
      watch: null,
      isLoading: false,
      loadingException: null,
    );
  }
}
