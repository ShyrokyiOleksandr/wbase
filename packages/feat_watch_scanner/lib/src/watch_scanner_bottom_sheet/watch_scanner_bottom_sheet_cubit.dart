import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kern_domain/kern_domain.dart';

import 'watch_scanner_bottom_sheet_state.dart';

class WatchScannerBottomSheetCubit extends Cubit<WatchScannerBottomSheetState> {
  final String watchId;
  final GetWatchDetailsUseCase _getWatchDetailsUseCase;

  WatchScannerBottomSheetCubit({
    required this.watchId,
    required GetWatchDetailsUseCase getWatchDetailsUseCase,
  })  : _getWatchDetailsUseCase = getWatchDetailsUseCase,
        super(WatchScannerBottomSheetState.initial()) {
    loadWatchDetails(watchId);
  }

  void loadWatchDetails(String watchId) async {
    if (watchId == "Entity") return;
    emit(state.copyWith(isLoading: true));
    try {
      final watch = await _getWatchDetailsUseCase.execute(watchId);
      if (!isClosed) emit(state.copyWith(isLoading: false, watch: watch));
    } on Exception catch (exception) {
      if (!isClosed) emit(state.copyWith(isLoading: false, loadingException: exception));
    }
  }
}
