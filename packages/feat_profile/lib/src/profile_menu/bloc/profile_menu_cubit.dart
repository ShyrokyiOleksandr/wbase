import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_menu_state.dart';

class ProfileMenuCubit extends Cubit<ProfileMenuState> {
  ProfileMenuCubit() : super(ProfileMenuState.initial());
}
