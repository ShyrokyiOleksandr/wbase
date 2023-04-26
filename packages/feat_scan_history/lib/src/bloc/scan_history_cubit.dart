import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kern_domain/kern_domain.dart';

import 'scan_history_state.dart';

class ScanHistoryCubit extends Cubit<ScanHistoryState> {
  final GetScanHistoryUseCase _getScanHistoryUseCase;

  ScanHistoryCubit({
    required GetScanHistoryUseCase getScanHistoryUseCase,
  })  : _getScanHistoryUseCase = getScanHistoryUseCase,
        super(ScanHistoryState.initial()) {
    loadScanHistory();
  }

  Future<void> loadScanHistory() async {
    emit(state.copyWith(isLoading: true));
    try {
      final history = await _getScanHistoryUseCase.execute();
      emit(state.copyWith(isLoading: false, history: history.reversed.toList()));
    } on Exception catch (exception) {
      emit(state.copyWith(isLoading: false, loadingException: exception));
    }
  }
}
