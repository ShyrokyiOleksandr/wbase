import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_lib/ui_lib.dart';

import '../l10n/profile_localizations.dart';
import 'bloc/profile_menu_cubit.dart';
import 'bloc/profile_menu_state.dart';

class ProfileMenuScreen extends StatelessWidget {
  late final _screenBloc = GetIt.I<ProfileMenuCubit>();

  ProfileMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = ProfileLocalizations.of(context);

    return BlocBuilder<ProfileMenuCubit, ProfileMenuState>(
      bloc: _screenBloc,
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(l10n.profileMenuTitleText),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _logOut() {
    //_screenBloc.signOut();
  }
}
