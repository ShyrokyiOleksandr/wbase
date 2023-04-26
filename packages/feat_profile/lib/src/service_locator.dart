import 'package:feat_profile/src/profile_menu/bloc/profile_menu_cubit.dart';
import 'package:get_it/get_it.dart';

class ProfileMenuServiceLocator {
  ProfileMenuServiceLocator._();

  static Future<void> setup() async {
    // bloc
    GetIt.I.registerFactory<ProfileMenuCubit>(
      () => ProfileMenuCubit(),
    );
  }
}
