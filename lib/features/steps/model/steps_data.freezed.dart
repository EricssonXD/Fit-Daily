// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steps_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StepsData {
  int get id => throw _privateConstructorUsedError;
  @Index(unique: true)
  DateTime get date => throw _privateConstructorUsedError;
  int get stepsTaken => throw _privateConstructorUsedError;
  bool get isSynced => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StepsDataCopyWith<StepsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsDataCopyWith<$Res> {
  factory $StepsDataCopyWith(StepsData value, $Res Function(StepsData) then) =
      _$StepsDataCopyWithImpl<$Res, StepsData>;
  @useResult
  $Res call(
      {int id,
      @Index(unique: true) DateTime date,
      int stepsTaken,
      bool isSynced});
}

/// @nodoc
class _$StepsDataCopyWithImpl<$Res, $Val extends StepsData>
    implements $StepsDataCopyWith<$Res> {
  _$StepsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? stepsTaken = null,
    Object? isSynced = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepsTaken: null == stepsTaken
          ? _value.stepsTaken
          : stepsTaken // ignore: cast_nullable_to_non_nullable
              as int,
      isSynced: null == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StepsDataImplCopyWith<$Res>
    implements $StepsDataCopyWith<$Res> {
  factory _$$StepsDataImplCopyWith(
          _$StepsDataImpl value, $Res Function(_$StepsDataImpl) then) =
      __$$StepsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @Index(unique: true) DateTime date,
      int stepsTaken,
      bool isSynced});
}

/// @nodoc
class __$$StepsDataImplCopyWithImpl<$Res>
    extends _$StepsDataCopyWithImpl<$Res, _$StepsDataImpl>
    implements _$$StepsDataImplCopyWith<$Res> {
  __$$StepsDataImplCopyWithImpl(
      _$StepsDataImpl _value, $Res Function(_$StepsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? stepsTaken = null,
    Object? isSynced = null,
  }) {
    return _then(_$StepsDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stepsTaken: null == stepsTaken
          ? _value.stepsTaken
          : stepsTaken // ignore: cast_nullable_to_non_nullable
              as int,
      isSynced: null == isSynced
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StepsDataImpl implements _StepsData {
  const _$StepsDataImpl(
      {required this.id,
      @Index(unique: true) required this.date,
      required this.stepsTaken,
      this.isSynced = false});

  @override
  final int id;
  @override
  @Index(unique: true)
  final DateTime date;
  @override
  final int stepsTaken;
  @override
  @JsonKey()
  final bool isSynced;

  @override
  String toString() {
    return 'StepsData(id: $id, date: $date, stepsTaken: $stepsTaken, isSynced: $isSynced)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.stepsTaken, stepsTaken) ||
                other.stepsTaken == stepsTaken) &&
            (identical(other.isSynced, isSynced) ||
                other.isSynced == isSynced));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date, stepsTaken, isSynced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepsDataImplCopyWith<_$StepsDataImpl> get copyWith =>
      __$$StepsDataImplCopyWithImpl<_$StepsDataImpl>(this, _$identity);
}

abstract class _StepsData implements StepsData {
  const factory _StepsData(
      {required final int id,
      @Index(unique: true) required final DateTime date,
      required final int stepsTaken,
      final bool isSynced}) = _$StepsDataImpl;

  @override
  int get id;
  @override
  @Index(unique: true)
  DateTime get date;
  @override
  int get stepsTaken;
  @override
  bool get isSynced;
  @override
  @JsonKey(ignore: true)
  _$$StepsDataImplCopyWith<_$StepsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
