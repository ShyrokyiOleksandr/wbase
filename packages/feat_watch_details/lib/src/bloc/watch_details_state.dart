import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kern_domain/kern_domain.dart';

part 'watch_details_state.freezed.dart';

@freezed
class WatchDetailsState with _$WatchDetailsState {
  const factory WatchDetailsState({
    required Watch? watch,
    required bool isLoading,
    required Exception? loadingException,
  }) = _WatchDetailsState;

  factory WatchDetailsState.initial() {
    return const WatchDetailsState(
      watch: null,
      isLoading: false,
      loadingException: null,
    );
  }
}
