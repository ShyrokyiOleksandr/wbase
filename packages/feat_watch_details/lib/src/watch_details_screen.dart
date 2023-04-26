import 'package:feat_watch_details/feat_watch_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_lib/ui_lib.dart';

import 'bloc/watch_details_cubit.dart';
import 'bloc/watch_details_state.dart';

class WatchDetailsScreen extends StatelessWidget {
  late final _screenBloc = GetIt.I<WatchDetailsCubit>(param1: watchId);

  final String watchId;
  final String? watchPhotoUrl;
  final VoidCallback onTapBack;
  final VoidCallback onApplyEstimate;

  WatchDetailsScreen({
    required this.watchId,
    required this.watchPhotoUrl,
    required this.onTapBack,
    required this.onApplyEstimate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = WatchDetailsLocalizations.of(context);

    return Scaffold(
      body: BlocBuilder<WatchDetailsCubit, WatchDetailsState>(
        bloc: _screenBloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const UILibLoadingOverlay();
          }
          if (state.loadingException != null) {
            return UILibTryAgainError(
              message: state.loadingException.toString(),
              onTryAgain: () => _screenBloc.loadWatchDetails(watchId),
            );
          }
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    UILibBackButton(onTapBack: onTapBack),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        watchPhotoUrl != null
                            ? _WatchPhoto(watchPhotoUrl: watchPhotoUrl)
                            : Placeholder(fallbackWidth: 130, fallbackHeight: 130),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                l10n.titleMessage,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(width: 6),
                              _SectionText(text: "${state.watch?.brand} ${state.watch?.model}"),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    UILibButton.textSolidGrey(
                      text: l10n.applyForEstimateAction,
                      onPressed: onApplyEstimate,
                    ),
                    const SizedBox(height: 24),
                    _SectionText(text: l10n.sectionMainCharacteristics),
                    const SizedBox(height: 16),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(children: [Text(l10n.paramGender), _ValueText(state.watch?.gender)]),
                        TableRow(children: [Text(l10n.paramModel), _ValueText(state.watch?.model)]),
                        TableRow(children: [
                          Text(l10n.paramWarranty),
                          _ValueText("${state.watch?.warranty} ${l10n.monthsEnding}")
                        ]),
                        TableRow(children: [Text(l10n.paramBrand), _ValueText(state.watch?.brand)]),
                        TableRow(children: [Text(l10n.paramCollection), _ValueText(state.watch?.collection)]),
                        TableRow(children: [Text(l10n.paramVersion), _ValueText(state.watch?.version)]),
                        TableRow(children: [Text(l10n.paramGlass), _ValueText(state.watch?.glass)]),
                        TableRow(children: [Text(l10n.paramTimeFormat), _ValueText(state.watch?.timeFormat)]),
                        TableRow(children: [Text(l10n.paramState), _ValueText(state.watch?.state)]),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _SectionText(text: l10n.sectionMechanism),
                    const SizedBox(height: 16),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(children: [Text(l10n.paramType), _ValueText(state.watch?.mechanismType)]),
                        TableRow(children: [Text(l10n.paramCountry), _ValueText(state.watch?.country)]),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _SectionText(text: l10n.sectionDial),
                    const SizedBox(height: 16),
                    Table(defaultVerticalAlignment: TableCellVerticalAlignment.middle, children: [
                      TableRow(children: [Text(l10n.paramDialColor), _ValueText(state.watch?.dialColor)]),
                      TableRow(children: [Text(l10n.paramIndexView), _ValueText(state.watch?.dialIndexView)]),
                      TableRow(children: [Text(l10n.paramIndexType), _ValueText(state.watch?.dialIndexType)]),
                    ]),
                    const SizedBox(height: 24),
                    _SectionText(text: l10n.sectionCase),
                    const SizedBox(height: 16),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                            children: [Text(l10n.paramCaseDiameter), _ValueText(state.watch?.caseDiameter.toString())]),
                        TableRow(
                            children: [Text(l10n.paramCaseMaterial), _ValueText(state.watch?.caseMaterial.join(", "))]),
                        TableRow(children: [Text(l10n.paramCaseColor), _ValueText(state.watch?.caseColor.join(", "))]),
                        TableRow(children: [Text(l10n.paramCaseShape), _ValueText(state.watch?.caseShape)]),
                        TableRow(
                            children: [Text(l10n.paramWaterResistance), _ValueText("${state.watch?.waterResistance}")]),
                        TableRow(
                            children: [Text(l10n.paramCaseHeight), _ValueText(state.watch?.caseHeight.toString())]),
                        TableRow(
                            children: [Text(l10n.paramCaseWeight), _ValueText(state.watch?.caseWeight.toString())]),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _SectionText(text: l10n.sectionBracelet),
                    const SizedBox(height: 16),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(children: [Text(l10n.paramBraceletOrBelt), _ValueText(state.watch?.braceletType)]),
                        TableRow(
                            children: [Text(l10n.paramBraceletMaterial), _ValueText(state.watch?.braceletMaterial)]),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _SectionText(text: l10n.sectionExtraCharacteristics),
                    const SizedBox(height: 16),
                    Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(children: [Text(l10n.paramAntiGlare), _ValueText(state.watch?.antiGlare)]),
                        TableRow(children: [Text(l10n.paramDateIndex), _ValueText(state.watch?.dateIndex)]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SectionText extends StatelessWidget {
  final String text;

  const _SectionText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}

class _WatchPhoto extends StatelessWidget {
  static const _width = 130.0;
  static const _height = 130.0;

  final String? watchPhotoUrl;

  const _WatchPhoto({
    required this.watchPhotoUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        watchPhotoUrl!,
        width: _width,
        height: _height,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress != null) {
            return SizedBox(
              width: _width,
              height: _height,
              child: UILibLoadingOverlay(),
            );
          }
          return AnimatedScale(
            duration: const Duration(milliseconds: 100),
            scale: loadingProgress == null ? 1 : 0,
            child: child,
          );
        },
      ),
    );
  }
}

class _ValueText extends StatelessWidget {
  static const _placeholder = "-";

  final String? text;

  const _ValueText(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text ?? _placeholder,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
