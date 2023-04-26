import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch.freezed.dart';

@freezed
class Watch with _$Watch {
  const factory Watch({
    required String id,

    // Main
    required String gender,
    required String brand,
    required String collection,
    required String model,
    required int warranty,
    required String version,
    required String glass,
    required String timeFormat,
    required String state,

    // Mechanism
    required String mechanismType,
    required String country,

    // Dial
    required String dialColor,
    required String dialIndexView,
    required String dialIndexType,

    // Case
    required int caseDiameter,
    required List<String> caseMaterial,
    required List<String> caseColor,
    required String caseShape,
    required int waterResistance,
    required double caseHeight,
    required double caseWeight,

    // Bracelet
    required String braceletType,
    required String braceletMaterial,

    // Extra
    required String antiGlare,
    required String dateIndex,
  }) = _Watch;
}
