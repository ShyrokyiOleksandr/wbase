import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_menu_state.freezed.dart';

@freezed
class ProfileMenuState with _$ProfileMenuState {
  const factory ProfileMenuState() = _ProfileMenuState;

  factory ProfileMenuState.initial() {
    return const ProfileMenuState();
  }
}
