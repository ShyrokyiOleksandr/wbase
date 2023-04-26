// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanHistoryState {
  List<ScanHistoryItem> get history => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Exception? get loadingException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanHistoryStateCopyWith<ScanHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanHistoryStateCopyWith<$Res> {
  factory $ScanHistoryStateCopyWith(
          ScanHistoryState value, $Res Function(ScanHistoryState) then) =
      _$ScanHistoryStateCopyWithImpl<$Res, ScanHistoryState>;
  @useResult
  $Res call(
      {List<ScanHistoryItem> history,
      bool isLoading,
      Exception? loadingException});
}

/// @nodoc
class _$ScanHistoryStateCopyWithImpl<$Res, $Val extends ScanHistoryState>
    implements $ScanHistoryStateCopyWith<$Res> {
  _$ScanHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isLoading = null,
    Object? loadingException = freezed,
  }) {
    return _then(_value.copyWith(
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<ScanHistoryItem>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingException: freezed == loadingException
          ? _value.loadingException
          : loadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScanHistoryStateCopyWith<$Res>
    implements $ScanHistoryStateCopyWith<$Res> {
  factory _$$_ScanHistoryStateCopyWith(
          _$_ScanHistoryState value, $Res Function(_$_ScanHistoryState) then) =
      __$$_ScanHistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ScanHistoryItem> history,
      bool isLoading,
      Exception? loadingException});
}

/// @nodoc
class __$$_ScanHistoryStateCopyWithImpl<$Res>
    extends _$ScanHistoryStateCopyWithImpl<$Res, _$_ScanHistoryState>
    implements _$$_ScanHistoryStateCopyWith<$Res> {
  __$$_ScanHistoryStateCopyWithImpl(
      _$_ScanHistoryState _value, $Res Function(_$_ScanHistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
    Object? isLoading = null,
    Object? loadingException = freezed,
  }) {
    return _then(_$_ScanHistoryState(
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<ScanHistoryItem>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingException: freezed == loadingException
          ? _value.loadingException
          : loadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ScanHistoryState implements _ScanHistoryState {
  const _$_ScanHistoryState(
      {required final List<ScanHistoryItem> history,
      required this.isLoading,
      required this.loadingException})
      : _history = history;

  final List<ScanHistoryItem> _history;
  @override
  List<ScanHistoryItem> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  final bool isLoading;
  @override
  final Exception? loadingException;

  @override
  String toString() {
    return 'ScanHistoryState(history: $history, isLoading: $isLoading, loadingException: $loadingException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanHistoryState &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadingException, loadingException) ||
                other.loadingException == loadingException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_history),
      isLoading,
      loadingException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScanHistoryStateCopyWith<_$_ScanHistoryState> get copyWith =>
      __$$_ScanHistoryStateCopyWithImpl<_$_ScanHistoryState>(this, _$identity);
}

abstract class _ScanHistoryState implements ScanHistoryState {
  const factory _ScanHistoryState(
      {required final List<ScanHistoryItem> history,
      required final bool isLoading,
      required final Exception? loadingException}) = _$_ScanHistoryState;

  @override
  List<ScanHistoryItem> get history;
  @override
  bool get isLoading;
  @override
  Exception? get loadingException;
  @override
  @JsonKey(ignore: true)
  _$$_ScanHistoryStateCopyWith<_$_ScanHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
