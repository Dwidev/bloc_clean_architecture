// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  Success<DataType, ErrorType> success<DataType, ErrorType>(DataType data) {
    return Success<DataType, ErrorType>(
      data,
    );
  }

  Error<DataType, ErrorType> error<DataType, ErrorType>(ErrorType error) {
    return Error<DataType, ErrorType>(
      error,
    );
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result<DataType, ErrorType> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataType data) success,
    required TResult Function(ErrorType error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataType data)? success,
    TResult Function(ErrorType error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<DataType, ErrorType> value) success,
    required TResult Function(Error<DataType, ErrorType> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<DataType, ErrorType> value)? success,
    TResult Function(Error<DataType, ErrorType> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<DataType, ErrorType, $Res> {
  factory $ResultCopyWith(Result<DataType, ErrorType> value,
          $Res Function(Result<DataType, ErrorType>) then) =
      _$ResultCopyWithImpl<DataType, ErrorType, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<DataType, ErrorType, $Res>
    implements $ResultCopyWith<DataType, ErrorType, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<DataType, ErrorType> _value;
  // ignore: unused_field
  final $Res Function(Result<DataType, ErrorType>) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<DataType, ErrorType, $Res> {
  factory $SuccessCopyWith(Success<DataType, ErrorType> value,
          $Res Function(Success<DataType, ErrorType>) then) =
      _$SuccessCopyWithImpl<DataType, ErrorType, $Res>;
  $Res call({DataType data});
}

/// @nodoc
class _$SuccessCopyWithImpl<DataType, ErrorType, $Res>
    extends _$ResultCopyWithImpl<DataType, ErrorType, $Res>
    implements $SuccessCopyWith<DataType, ErrorType, $Res> {
  _$SuccessCopyWithImpl(Success<DataType, ErrorType> _value,
      $Res Function(Success<DataType, ErrorType>) _then)
      : super(_value, (v) => _then(v as Success<DataType, ErrorType>));

  @override
  Success<DataType, ErrorType> get _value =>
      super._value as Success<DataType, ErrorType>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Success<DataType, ErrorType>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataType,
    ));
  }
}

/// @nodoc

class _$Success<DataType, ErrorType> implements Success<DataType, ErrorType> {
  _$Success(this.data);

  @override
  final DataType data;

  @override
  String toString() {
    return 'Result<$DataType, $ErrorType>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<DataType, ErrorType> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<DataType, ErrorType, Success<DataType, ErrorType>>
      get copyWith => _$SuccessCopyWithImpl<DataType, ErrorType,
          Success<DataType, ErrorType>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataType data) success,
    required TResult Function(ErrorType error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataType data)? success,
    TResult Function(ErrorType error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<DataType, ErrorType> value) success,
    required TResult Function(Error<DataType, ErrorType> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<DataType, ErrorType> value)? success,
    TResult Function(Error<DataType, ErrorType> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<DataType, ErrorType>
    implements Result<DataType, ErrorType> {
  factory Success(DataType data) = _$Success<DataType, ErrorType>;

  DataType get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<DataType, ErrorType, Success<DataType, ErrorType>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<DataType, ErrorType, $Res> {
  factory $ErrorCopyWith(Error<DataType, ErrorType> value,
          $Res Function(Error<DataType, ErrorType>) then) =
      _$ErrorCopyWithImpl<DataType, ErrorType, $Res>;
  $Res call({ErrorType error});
}

/// @nodoc
class _$ErrorCopyWithImpl<DataType, ErrorType, $Res>
    extends _$ResultCopyWithImpl<DataType, ErrorType, $Res>
    implements $ErrorCopyWith<DataType, ErrorType, $Res> {
  _$ErrorCopyWithImpl(Error<DataType, ErrorType> _value,
      $Res Function(Error<DataType, ErrorType>) _then)
      : super(_value, (v) => _then(v as Error<DataType, ErrorType>));

  @override
  Error<DataType, ErrorType> get _value =>
      super._value as Error<DataType, ErrorType>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error<DataType, ErrorType>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorType,
    ));
  }
}

/// @nodoc

class _$Error<DataType, ErrorType> implements Error<DataType, ErrorType> {
  _$Error(this.error);

  @override
  final ErrorType error;

  @override
  String toString() {
    return 'Result<$DataType, $ErrorType>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<DataType, ErrorType> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<DataType, ErrorType, Error<DataType, ErrorType>>
      get copyWith =>
          _$ErrorCopyWithImpl<DataType, ErrorType, Error<DataType, ErrorType>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataType data) success,
    required TResult Function(ErrorType error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataType data)? success,
    TResult Function(ErrorType error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<DataType, ErrorType> value) success,
    required TResult Function(Error<DataType, ErrorType> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<DataType, ErrorType> value)? success,
    TResult Function(Error<DataType, ErrorType> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<DataType, ErrorType>
    implements Result<DataType, ErrorType> {
  factory Error(ErrorType error) = _$Error<DataType, ErrorType>;

  ErrorType get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<DataType, ErrorType, Error<DataType, ErrorType>>
      get copyWith => throw _privateConstructorUsedError;
}
