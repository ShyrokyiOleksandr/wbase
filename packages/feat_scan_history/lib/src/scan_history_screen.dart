import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_lib/ui_lib.dart';

import 'bloc/scan_history_cubit.dart';
import 'bloc/scan_history_state.dart';
import 'l10n/scan_history_localizations.dart';

class ScanHistoryScreen extends StatelessWidget {
  final _screenBloc = GetIt.I<ScanHistoryCubit>();

  final VoidCallback onAddWatchPressed;

  final void Function(
    String watchId,
    String watchPhotoUrl,
  ) onItemTap;

  ScanHistoryScreen({
    required this.onItemTap,
    required this.onAddWatchPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = ScanHistoryLocalizations.of(context);

    return Scaffold(
      body: BlocBuilder<ScanHistoryCubit, ScanHistoryState>(
        bloc: _screenBloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const UILibLoadingOverlay();
          }
          if (state.loadingException != null) {
            return UILibTryAgainError(
              message: state.loadingException.toString(),
              onTryAgain: _screenBloc.loadScanHistory,
            );
          }
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                UILibHeadlineText(text: l10n.historyHeadline),
                const SizedBox(height: 20),
                state.history.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: state.history.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 26),
                                  title: Text(
                                    "${state.history[index].brand} "
                                    "${state.history[index].model}",
                                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                  ),
                                  trailing: const Icon(Icons.chevron_right),
                                  onTap: () => onItemTap(
                                    state.history[index].watchId,
                                    state.history[index].photoUrl,
                                  ),
                                ),
                                const UILibHorizontalDivider(margin: EdgeInsets.symmetric(horizontal: 26)),
                              ],
                            );
                          },
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              UILibHeadlineText(text: "Нажаль не додано жодної моделі"),
                              const SizedBox(height: 30),
                              UILibButton.textSolidGrey(text: "Додати годининк", onPressed: onAddWatchPressed)
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
