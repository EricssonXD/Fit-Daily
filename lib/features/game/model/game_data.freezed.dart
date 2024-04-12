// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameData {
  int get goldMedals => throw _privateConstructorUsedError;
  int get silverMedals => throw _privateConstructorUsedError;
  int get monsterMedals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDataCopyWith<GameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDataCopyWith<$Res> {
  factory $GameDataCopyWith(GameData value, $Res Function(GameData) then) =
      _$GameDataCopyWithImpl<$Res, GameData>;
  @useResult
  $Res call({int goldMedals, int silverMedals, int monsterMedals});
}

/// @nodoc
class _$GameDataCopyWithImpl<$Res, $Val extends GameData>
    implements $GameDataCopyWith<$Res> {
  _$GameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldMedals = null,
    Object? silverMedals = null,
    Object? monsterMedals = null,
  }) {
    return _then(_value.copyWith(
      goldMedals: null == goldMedals
          ? _value.goldMedals
          : goldMedals // ignore: cast_nullable_to_non_nullable
              as int,
      silverMedals: null == silverMedals
          ? _value.silverMedals
          : silverMedals // ignore: cast_nullable_to_non_nullable
              as int,
      monsterMedals: null == monsterMedals
          ? _value.monsterMedals
          : monsterMedals // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameDataImplCopyWith<$Res>
    implements $GameDataCopyWith<$Res> {
  factory _$$GameDataImplCopyWith(
          _$GameDataImpl value, $Res Function(_$GameDataImpl) then) =
      __$$GameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int goldMedals, int silverMedals, int monsterMedals});
}

/// @nodoc
class __$$GameDataImplCopyWithImpl<$Res>
    extends _$GameDataCopyWithImpl<$Res, _$GameDataImpl>
    implements _$$GameDataImplCopyWith<$Res> {
  __$$GameDataImplCopyWithImpl(
      _$GameDataImpl _value, $Res Function(_$GameDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goldMedals = null,
    Object? silverMedals = null,
    Object? monsterMedals = null,
  }) {
    return _then(_$GameDataImpl(
      goldMedals: null == goldMedals
          ? _value.goldMedals
          : goldMedals // ignore: cast_nullable_to_non_nullable
              as int,
      silverMedals: null == silverMedals
          ? _value.silverMedals
          : silverMedals // ignore: cast_nullable_to_non_nullable
              as int,
      monsterMedals: null == monsterMedals
          ? _value.monsterMedals
          : monsterMedals // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameDataImpl implements _GameData {
  const _$GameDataImpl(
      {required this.goldMedals,
      required this.silverMedals,
      required this.monsterMedals});

  @override
  final int goldMedals;
  @override
  final int silverMedals;
  @override
  final int monsterMedals;

  @override
  String toString() {
    return 'GameData(goldMedals: $goldMedals, silverMedals: $silverMedals, monsterMedals: $monsterMedals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDataImpl &&
            (identical(other.goldMedals, goldMedals) ||
                other.goldMedals == goldMedals) &&
            (identical(other.silverMedals, silverMedals) ||
                other.silverMedals == silverMedals) &&
            (identical(other.monsterMedals, monsterMedals) ||
                other.monsterMedals == monsterMedals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, goldMedals, silverMedals, monsterMedals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDataImplCopyWith<_$GameDataImpl> get copyWith =>
      __$$GameDataImplCopyWithImpl<_$GameDataImpl>(this, _$identity);
}

abstract class _GameData implements GameData {
  const factory _GameData(
      {required final int goldMedals,
      required final int silverMedals,
      required final int monsterMedals}) = _$GameDataImpl;

  @override
  int get goldMedals;
  @override
  int get silverMedals;
  @override
  int get monsterMedals;
  @override
  @JsonKey(ignore: true)
  _$$GameDataImplCopyWith<_$GameDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
