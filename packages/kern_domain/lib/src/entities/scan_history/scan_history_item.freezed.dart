// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_history_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanHistoryItem {
  String get id => throw _privateConstructorUsedError;
  String get watchId => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanHistoryItemCopyWith<ScanHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanHistoryItemCopyWith<$Res> {
  factory $ScanHistoryItemCopyWith(
          ScanHistoryItem value, $Res Function(ScanHistoryItem) then) =
      _$ScanHistoryItemCopyWithImpl<$Res, ScanHistoryItem>;
  @useResult
  $Res call(
      {String id,
      String watchId,
      String brand,
      String model,
      DateTime date,
      String photoUrl});
}

/// @nodoc
class _$ScanHistoryItemCopyWithImpl<$Res, $Val extends ScanHistoryItem>
    implements $ScanHistoryItemCopyWith<$Res> {
  _$ScanHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? watchId = null,
    Object? brand = null,
    Object? model = null,
    Object? date = null,
    Object? photoUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      watchId: null == watchId
          ? _value.watchId
          : watchId // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScanHistoryItemCopyWith<$Res>
    implements $ScanHistoryItemCopyWith<$Res> {
  factory _$$_ScanHistoryItemCopyWith(
          _$_ScanHistoryItem value, $Res Function(_$_ScanHistoryItem) then) =
      __$$_ScanHistoryItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String watchId,
      String brand,
      String model,
      DateTime date,
      String photoUrl});
}

/// @nodoc
class __$$_ScanHistoryItemCopyWithImpl<$Res>
    extends _$ScanHistoryItemCopyWithImpl<$Res, _$_ScanHistoryItem>
    implements _$$_ScanHistoryItemCopyWith<$Res> {
  __$$_ScanHistoryItemCopyWithImpl(
      _$_ScanHistoryItem _value, $Res Function(_$_ScanHistoryItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? watchId = null,
    Object? brand = null,
    Object? model = null,
    Object? date = null,
    Object? photoUrl = null,
  }) {
    return _then(_$_ScanHistoryItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      watchId: null == watchId
          ? _value.watchId
          : watchId // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ScanHistoryItem implements _ScanHistoryItem {
  const _$_ScanHistoryItem(
      {required this.id,
      required this.watchId,
      required this.brand,
      required this.model,
      required this.date,
      required this.photoUrl});

  @override
  final String id;
  @override
  final String watchId;
  @override
  final String brand;
  @override
  final String model;
  @override
  final DateTime date;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'ScanHistoryItem(id: $id, watchId: $watchId, brand: $brand, model: $model, date: $date, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanHistoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.watchId, watchId) || other.watchId == watchId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, watchId, brand, model, date, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScanHistoryItemCopyWith<_$_ScanHistoryItem> get copyWith =>
      __$$_ScanHistoryItemCopyWithImpl<_$_ScanHistoryItem>(this, _$identity);
}

abstract class _ScanHistoryItem implements ScanHistoryItem {
  const factory _ScanHistoryItem(
      {required final String id,
      required final String watchId,
      required final String brand,
      required final String model,
      required final DateTime date,
      required final String photoUrl}) = _$_ScanHistoryItem;

  @override
  String get id;
  @override
  String get watchId;
  @override
  String get brand;
  @override
  String get model;
  @override
  DateTime get date;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ScanHistoryItemCopyWith<_$_ScanHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}
