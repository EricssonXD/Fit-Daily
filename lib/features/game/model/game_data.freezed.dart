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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameData {
  int get goldMedals => throw _privateConstructorUsedError;
  int get silverMedals => throw _privateConstructorUsedError;
  int get monsterMedals => throw _privateConstructorUsedError;
  GameLevel get currentLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameDataCopyWith<GameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDataCopyWith<$Res> {
  factory $GameDataCopyWith(GameData value, $Res Function(GameData) then) =
      _$GameDataCopyWithImpl<$Res, GameData>;
  @useResult
  $Res call(
      {int goldMedals,
      int silverMedals,
      int monsterMedals,
      GameLevel currentLevel});

  $GameLevelCopyWith<$Res> get currentLevel;
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
    Object? currentLevel = null,
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
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as GameLevel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameLevelCopyWith<$Res> get currentLevel {
    return $GameLevelCopyWith<$Res>(_value.currentLevel, (value) {
      return _then(_value.copyWith(currentLevel: value) as $Val);
    });
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
  $Res call(
      {int goldMedals,
      int silverMedals,
      int monsterMedals,
      GameLevel currentLevel});

  @override
  $GameLevelCopyWith<$Res> get currentLevel;
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
    Object? currentLevel = null,
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
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as GameLevel,
    ));
  }
}

/// @nodoc

class _$GameDataImpl implements _GameData {
  const _$GameDataImpl(
      {required this.goldMedals,
      required this.silverMedals,
      required this.monsterMedals,
      required this.currentLevel});

  @override
  final int goldMedals;
  @override
  final int silverMedals;
  @override
  final int monsterMedals;
  @override
  final GameLevel currentLevel;

  @override
  String toString() {
    return 'GameData(goldMedals: $goldMedals, silverMedals: $silverMedals, monsterMedals: $monsterMedals, currentLevel: $currentLevel)';
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
                other.monsterMedals == monsterMedals) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, goldMedals, silverMedals, monsterMedals, currentLevel);

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
      required final int monsterMedals,
      required final GameLevel currentLevel}) = _$GameDataImpl;

  @override
  int get goldMedals;
  @override
  int get silverMedals;
  @override
  int get monsterMedals;
  @override
  GameLevel get currentLevel;
  @override
  @JsonKey(ignore: true)
  _$$GameDataImplCopyWith<_$GameDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameLevel {
  int get monsterID => throw _privateConstructorUsedError;
  int get stepsTaken => throw _privateConstructorUsedError;
  int get stepsTotal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameLevelCopyWith<GameLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameLevelCopyWith<$Res> {
  factory $GameLevelCopyWith(GameLevel value, $Res Function(GameLevel) then) =
      _$GameLevelCopyWithImpl<$Res, GameLevel>;
  @useResult
  $Res call({int monsterID, int stepsTaken, int stepsTotal});
}

/// @nodoc
class _$GameLevelCopyWithImpl<$Res, $Val extends GameLevel>
    implements $GameLevelCopyWith<$Res> {
  _$GameLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monsterID = null,
    Object? stepsTaken = null,
    Object? stepsTotal = null,
  }) {
    return _then(_value.copyWith(
      monsterID: null == monsterID
          ? _value.monsterID
          : monsterID // ignore: cast_nullable_to_non_nullable
              as int,
      stepsTaken: null == stepsTaken
          ? _value.stepsTaken
          : stepsTaken // ignore: cast_nullable_to_non_nullable
              as int,
      stepsTotal: null == stepsTotal
          ? _value.stepsTotal
          : stepsTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameLevelImplCopyWith<$Res>
    implements $GameLevelCopyWith<$Res> {
  factory _$$GameLevelImplCopyWith(
          _$GameLevelImpl value, $Res Function(_$GameLevelImpl) then) =
      __$$GameLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int monsterID, int stepsTaken, int stepsTotal});
}

/// @nodoc
class __$$GameLevelImplCopyWithImpl<$Res>
    extends _$GameLevelCopyWithImpl<$Res, _$GameLevelImpl>
    implements _$$GameLevelImplCopyWith<$Res> {
  __$$GameLevelImplCopyWithImpl(
      _$GameLevelImpl _value, $Res Function(_$GameLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monsterID = null,
    Object? stepsTaken = null,
    Object? stepsTotal = null,
  }) {
    return _then(_$GameLevelImpl(
      monsterID: null == monsterID
          ? _value.monsterID
          : monsterID // ignore: cast_nullable_to_non_nullable
              as int,
      stepsTaken: null == stepsTaken
          ? _value.stepsTaken
          : stepsTaken // ignore: cast_nullable_to_non_nullable
              as int,
      stepsTotal: null == stepsTotal
          ? _value.stepsTotal
          : stepsTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameLevelImpl implements _GameLevel {
  const _$GameLevelImpl(
      {required this.monsterID,
      required this.stepsTaken,
      required this.stepsTotal});

  @override
  final int monsterID;
  @override
  final int stepsTaken;
  @override
  final int stepsTotal;

  @override
  String toString() {
    return 'GameLevel(monsterID: $monsterID, stepsTaken: $stepsTaken, stepsTotal: $stepsTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameLevelImpl &&
            (identical(other.monsterID, monsterID) ||
                other.monsterID == monsterID) &&
            (identical(other.stepsTaken, stepsTaken) ||
                other.stepsTaken == stepsTaken) &&
            (identical(other.stepsTotal, stepsTotal) ||
                other.stepsTotal == stepsTotal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, monsterID, stepsTaken, stepsTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameLevelImplCopyWith<_$GameLevelImpl> get copyWith =>
      __$$GameLevelImplCopyWithImpl<_$GameLevelImpl>(this, _$identity);
}

abstract class _GameLevel implements GameLevel {
  const factory _GameLevel(
      {required final int monsterID,
      required final int stepsTaken,
      required final int stepsTotal}) = _$GameLevelImpl;

  @override
  int get monsterID;
  @override
  int get stepsTaken;
  @override
  int get stepsTotal;
  @override
  @JsonKey(ignore: true)
  _$$GameLevelImplCopyWith<_$GameLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
