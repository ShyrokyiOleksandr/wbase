// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WatchRM _$WatchRMFromJson(Map<String, dynamic> json) => WatchRM(
      id: json['id'] as String,
      gender: json['gender'] as String,
      brand: json['brand'] as String,
      collection: json['collection'] as String,
      model: json['model'] as String,
      warranty: json['warranty'] as int,
      version: json['version'] as String,
      glass: json['glass'] as String,
      timeFormat: json['time_format'] as String,
      state: json['state'] as String,
      mechanismType: json['mechanism_type'] as String,
      country: json['country'] as String,
      dialColor: json['dial_color'] as String,
      dialIndexView: json['dial_index_view'] as String,
      dialIndexType: json['dial_index_type'] as String,
      caseDiameter: json['case_diameter'] as int,
      caseMaterial: (json['case_material'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      caseColor: (json['case_color'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      caseShape: json['case_shape'] as String,
      waterResistance: json['water_resistance'] as int,
      caseHeight: (json['case_height'] as num).toDouble(),
      caseWeight: (json['case_weight'] as num).toDouble(),
      braceletType: json['bracelet_type'] as String,
      braceletMaterial: json['bracelet_material'] as String,
      antiGlare: json['antiglare'] as String,
      dateIndex: json['date_index'] as String,
    );
