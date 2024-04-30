// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestDialogState {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  bool? get isMarried => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestDialogStateCopyWith<TestDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDialogStateCopyWith<$Res> {
  factory $TestDialogStateCopyWith(
          TestDialogState value, $Res Function(TestDialogState) then) =
      _$TestDialogStateCopyWithImpl<$Res, TestDialogState>;
  @useResult
  $Res call(
      {String? firstName, String? lastName, bool? isMarried, bool isLoading});
}

/// @nodoc
class _$TestDialogStateCopyWithImpl<$Res, $Val extends TestDialogState>
    implements $TestDialogStateCopyWith<$Res> {
  _$TestDialogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isMarried = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isMarried: freezed == isMarried
          ? _value.isMarried
          : isMarried // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestDialogStateImplCopyWith<$Res>
    implements $TestDialogStateCopyWith<$Res> {
  factory _$$TestDialogStateImplCopyWith(_$TestDialogStateImpl value,
          $Res Function(_$TestDialogStateImpl) then) =
      __$$TestDialogStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName, String? lastName, bool? isMarried, bool isLoading});
}

/// @nodoc
class __$$TestDialogStateImplCopyWithImpl<$Res>
    extends _$TestDialogStateCopyWithImpl<$Res, _$TestDialogStateImpl>
    implements _$$TestDialogStateImplCopyWith<$Res> {
  __$$TestDialogStateImplCopyWithImpl(
      _$TestDialogStateImpl _value, $Res Function(_$TestDialogStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isMarried = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$TestDialogStateImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isMarried: freezed == isMarried
          ? _value.isMarried
          : isMarried // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TestDialogStateImpl implements _TestDialogState {
  const _$TestDialogStateImpl(
      {this.firstName, this.lastName, this.isMarried, this.isLoading = false});

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final bool? isMarried;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TestDialogState(firstName: $firstName, lastName: $lastName, isMarried: $isMarried, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDialogStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.isMarried, isMarried) ||
                other.isMarried == isMarried) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, isMarried, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDialogStateImplCopyWith<_$TestDialogStateImpl> get copyWith =>
      __$$TestDialogStateImplCopyWithImpl<_$TestDialogStateImpl>(
          this, _$identity);
}

abstract class _TestDialogState implements TestDialogState {
  const factory _TestDialogState(
      {final String? firstName,
      final String? lastName,
      final bool? isMarried,
      final bool isLoading}) = _$TestDialogStateImpl;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  bool? get isMarried;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TestDialogStateImplCopyWith<_$TestDialogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
