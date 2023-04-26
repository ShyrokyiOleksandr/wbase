import 'package:json_annotation/json_annotation.dart';
import 'package:kern_domain/kern_domain.dart';

part 'watch_rm.g.dart';

@JsonSerializable(createToJson: false)
class WatchRM {
  @JsonKey(name: 'id')
  final String id;

  // Main
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'brand')
  final String brand;
  @JsonKey(name: 'collection')
  final String collection;
  @JsonKey(name: 'model')
  final String model;
  @JsonKey(name: 'warranty')
  final int warranty;
  @JsonKey(name: 'version')
  final String version;
  @JsonKey(name: 'glass')
  final String glass;
  @JsonKey(name: 'time_format')
  final String timeFormat;
  @JsonKey(name: 'state')
  final String state;

  // Mechanism
  @JsonKey(name: 'mechanism_type')
  final String mechanismType;
  @JsonKey(name: 'country')
  final String country;

  // Dial
  @JsonKey(name: 'dial_color')
  final String dialColor;
  @JsonKey(name: 'dial_index_view')
  final String dialIndexView;
  @JsonKey(name: 'dial_index_type')
  final String dialIndexType;

  // Case
  @JsonKey(name: 'case_diameter')
  final int caseDiameter;
  @JsonKey(name: 'case_material')
  final List<String> caseMaterial;
  @JsonKey(name: 'case_color')
  final List<String> caseColor;
  @JsonKey(name: 'case_shape')
  final String caseShape;
  @JsonKey(name: 'water_resistance')
  final int waterResistance;
  @JsonKey(name: 'case_height')
  final double caseHeight;
  @JsonKey(name: 'case_weight')
  final double caseWeight;

  // Bracelet
  @JsonKey(name: 'bracelet_type')
  final String braceletType;
  @JsonKey(name: 'bracelet_material')
  final String braceletMaterial;

  // Extra
  @JsonKey(name: 'antiglare')
  final String antiGlare;
  @JsonKey(name: 'date_index')
  final String dateIndex;

  const WatchRM({
    required this.id,

    // Main
    required this.gender,
    required this.brand,
    required this.collection,
    required this.model,
    required this.warranty,
    required this.version,
    required this.glass,
    required this.timeFormat,
    required this.state,

    // Mechanism
    required this.mechanismType,
    required this.country,

    // Dial
    required this.dialColor,
    required this.dialIndexView,
    required this.dialIndexType,

    // Case
    required this.caseDiameter,
    required this.caseMaterial,
    required this.caseColor,
    required this.caseShape,
    required this.waterResistance,
    required this.caseHeight,
    required this.caseWeight,

    // Bracelet
    required this.braceletType,
    required this.braceletMaterial,

    // Extra
    required this.antiGlare,
    required this.dateIndex,
  });

  factory WatchRM.fromJson(Map<String, dynamic> json) => _$WatchRMFromJson(json);

  Watch toDomain() {
    return Watch(
      id: id,

      // Main
      gender: gender,
      brand: brand,
      collection: collection,
      model: model,
      warranty: warranty,
      version: version,
      glass: glass,
      timeFormat: timeFormat,
      state: state,

      // Mechanism
      mechanismType: mechanismType,
      country: country,

      // Dial
      dialColor: dialColor,
      dialIndexView: dialIndexView,
      dialIndexType: dialIndexType,

      // Case
      caseDiameter: caseDiameter,
      caseMaterial: caseMaterial,
      caseColor: caseColor,
      caseShape: caseShape,
      waterResistance: waterResistance,
      caseHeight: caseHeight,
      caseWeight: caseWeight,

      // Bracelet
      braceletType: braceletType,
      braceletMaterial: braceletMaterial,

      // Extra
      antiGlare: antiGlare,
      dateIndex: dateIndex,
    );
  }
}
