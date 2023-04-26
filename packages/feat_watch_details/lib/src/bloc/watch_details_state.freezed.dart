// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchDetailsState {
  Watch? get watch => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Exception? get loadingException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchDetailsStateCopyWith<WatchDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchDetailsStateCopyWith<$Res> {
  factory $WatchDetailsStateCopyWith(
          WatchDetailsState value, $Res Function(WatchDetailsState) then) =
      _$WatchDetailsStateCopyWithImpl<$Res, WatchDetailsState>;
  @useResult
  $Res call({Watch? watch, bool isLoading, Exception? loadingException});

  $WatchCopyWith<$Res>? get watch;
}

/// @nodoc
class _$WatchDetailsStateCopyWithImpl<$Res, $Val extends WatchDetailsState>
    implements $WatchDetailsStateCopyWith<$Res> {
  _$WatchDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watch = freezed,
    Object? isLoading = null,
    Object? loadingException = freezed,
  }) {
    return _then(_value.copyWith(
      watch: freezed == watch
          ? _value.watch
          : watch // ignore: cast_nullable_to_non_nullable
              as Watch?,
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

  @override
  @pragma('vm:prefer-inline')
  $WatchCopyWith<$Res>? get watch {
    if (_value.watch == null) {
      return null;
    }

    return $WatchCopyWith<$Res>(_value.watch!, (value) {
      return _then(_value.copyWith(watch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WatchDetailsStateCopyWith<$Res>
    implements $WatchDetailsStateCopyWith<$Res> {
  factory _$$_WatchDetailsStateCopyWith(_$_WatchDetailsState value,
          $Res Function(_$_WatchDetailsState) then) =
      __$$_WatchDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Watch? watch, bool isLoading, Exception? loadingException});

  @override
  $WatchCopyWith<$Res>? get watch;
}

/// @nodoc
class __$$_WatchDetailsStateCopyWithImpl<$Res>
    extends _$WatchDetailsStateCopyWithImpl<$Res, _$_WatchDetailsState>
    implements _$$_WatchDetailsStateCopyWith<$Res> {
  __$$_WatchDetailsStateCopyWithImpl(
      _$_WatchDetailsState _value, $Res Function(_$_WatchDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watch = freezed,
    Object? isLoading = null,
    Object? loadingException = freezed,
  }) {
    return _then(_$_WatchDetailsState(
      watch: freezed == watch
          ? _value.watch
          : watch // ignore: cast_nullable_to_non_nullable
              as Watch?,
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

class _$_WatchDetailsState implements _WatchDetailsState {
  const _$_WatchDetailsState(
      {required this.watch,
      required this.isLoading,
      required this.loadingException});

  @override
  final Watch? watch;
  @override
  final bool isLoading;
  @override
  final Exception? loadingException;

  @override
  String toString() {
    return 'WatchDetailsState(watch: $watch, isLoading: $isLoading, loadingException: $loadingException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchDetailsState &&
            (identical(other.watch, watch) || other.watch == watch) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadingException, loadingException) ||
                other.loadingException == loadingException));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, watch, isLoading, loadingException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchDetailsStateCopyWith<_$_WatchDetailsState> get copyWith =>
      __$$_WatchDetailsStateCopyWithImpl<_$_WatchDetailsState>(
          this, _$identity);
}

abstract class _WatchDetailsState implements WatchDetailsState {
  const factory _WatchDetailsState(
      {required final Watch? watch,
      required final bool isLoading,
      required final Exception? loadingException}) = _$_WatchDetailsState;

  @override
  Watch? get watch;
  @override
  bool get isLoading;
  @override
  Exception? get loadingException;
  @override
  @JsonKey(ignore: true)
  _$$_WatchDetailsStateCopyWith<_$_WatchDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
