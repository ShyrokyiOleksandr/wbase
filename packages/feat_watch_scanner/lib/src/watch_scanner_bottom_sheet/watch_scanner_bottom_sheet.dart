import 'package:feat_watch_scanner/feat_watch_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_lib/ui_lib.dart';
import 'package:url_launcher/url_launcher.dart';

import 'watch_scanner_bottom_sheet_cubit.dart';
import 'watch_scanner_bottom_sheet_state.dart';

class WatchScannerBottomSheet extends StatefulWidget {
  final String watchId;

  static Future<Object?> showModal({
    required final String watchId,
    required final BuildContext context,
  }) {
    return UILibBottomSheet.showModal(
      context: context,
      isScrollControlled: true,
      paddingRatio: 0.4,
      child: WatchScannerBottomSheet._(
        watchId: watchId,
      ),
    );
  }

  const WatchScannerBottomSheet._({
    required this.watchId,
    Key? key,
  }) : super(key: key);

  @override
  State<WatchScannerBottomSheet> createState() => _WatchScannerBottomSheetState();
}

class _WatchScannerBottomSheetState extends State<WatchScannerBottomSheet> {
  static final _undefinedWatchKey = "Entity";
  static final _siteUrl = "http://watchexpert24.com";

  late final _screenBloc = GetIt.I<WatchScannerBottomSheetCubit>(param1: widget.watchId);

  @override
  Widget build(BuildContext context) {
    final l10n = WatchScannerLocalizations.of(context);

    return BlocBuilder<WatchScannerBottomSheetCubit, WatchScannerBottomSheetState>(
      bloc: _screenBloc,
      builder: (context, state) {
        if (state.isLoading) {
          return const UILibLoadingOverlay();
        }
        if (state.loadingException != null) {
          return UILibTryAgainError(
            message: state.loadingException.toString(),
            onTryAgain: () => Navigator.of(context).pop(true),
            onInHandPreessed: () => Navigator.of(context).pop(false),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (widget.watchId != _undefinedWatchKey)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      l10n.scannerBottomSheetTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "${state.watch?.brand} "
                        "${state.watch?.model}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    UILibButton.textSolidGrey(
                      onPressed: () {
                        Navigator.of(context).pop(state.watch);
                      },
                      text: l10n.scannerBottomSheetOpenWatchDetailsAction,
                    ),
                  ],
                ),
              if (widget.watchId == _undefinedWatchKey)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        l10n.scannerBottomSheetModelUndefinedMessage,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 10),
              UILibButton.textSolidWhite(
                onPressed: () => Navigator.of(context).pop(true),
                text: l10n.scannerBottomSheetTryAgainAction,
              ),
              const SizedBox(height: 12),
              UILibButton.textSolidWhite(
                onPressed: () => Navigator.of(context).pop(false),
                text: l10n.scannerBottomSheetInHandAction,
              ),
              if (widget.watchId == _undefinedWatchKey)
                Column(
                  children: [
                    const SizedBox(height: 30),
                    TextButton(
                      child: Text(
                        l10n.scannerBottomSheetUseWatchExpertMessage,
                        textAlign: TextAlign.center,
                      ),
                      style: TextButton.styleFrom(foregroundColor: UILibColors.blue),
                      onPressed: _launchSiteUrl,
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _screenBloc.close();
    super.dispose();
  }

  Future<void> _launchSiteUrl() async {
    if (!await launchUrl(Uri.parse(_siteUrl))) {
      throw Exception('Could not launch $_siteUrl');
    }
  }
}
