import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kern_domain/kern_domain.dart';

import 'watch_details_state.dart';

class WatchDetailsCubit extends Cubit<WatchDetailsState> {
  final String watchId;
  final GetWatchDetailsUseCase _getWatchDetailsUseCase;

  WatchDetailsCubit({
    required this.watchId,
    required GetWatchDetailsUseCase getWatchDetailsUseCase,
  })  : _getWatchDetailsUseCase = getWatchDetailsUseCase,
        super(WatchDetailsState.initial()) {
    loadWatchDetails(watchId);
  }

  void loadWatchDetails(String watchId) async {
    emit(state.copyWith(isLoading: true));
    try {
      final watch = await _getWatchDetailsUseCase.execute(watchId);
      emit(state.copyWith(isLoading: false, watch: watch));
    } on Exception catch (exception) {
      emit(state.copyWith(isLoading: false, loadingException: exception));
    }
  }
}
