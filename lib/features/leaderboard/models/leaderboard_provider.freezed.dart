// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeaderBoardEntry {
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaderBoardEntryCopyWith<LeaderBoardEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderBoardEntryCopyWith<$Res> {
  factory $LeaderBoardEntryCopyWith(
          LeaderBoardEntry value, $Res Function(LeaderBoardEntry) then) =
      _$LeaderBoardEntryCopyWithImpl<$Res, LeaderBoardEntry>;
  @useResult
  $Res call({String name, int score});
}

/// @nodoc
class _$LeaderBoardEntryCopyWithImpl<$Res, $Val extends LeaderBoardEntry>
    implements $LeaderBoardEntryCopyWith<$Res> {
  _$LeaderBoardEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderBoardEntryImplCopyWith<$Res>
    implements $LeaderBoardEntryCopyWith<$Res> {
  factory _$$LeaderBoardEntryImplCopyWith(_$LeaderBoardEntryImpl value,
          $Res Function(_$LeaderBoardEntryImpl) then) =
      __$$LeaderBoardEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int score});
}

/// @nodoc
class __$$LeaderBoardEntryImplCopyWithImpl<$Res>
    extends _$LeaderBoardEntryCopyWithImpl<$Res, _$LeaderBoardEntryImpl>
    implements _$$LeaderBoardEntryImplCopyWith<$Res> {
  __$$LeaderBoardEntryImplCopyWithImpl(_$LeaderBoardEntryImpl _value,
      $Res Function(_$LeaderBoardEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_$LeaderBoardEntryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LeaderBoardEntryImpl implements _LeaderBoardEntry {
  const _$LeaderBoardEntryImpl({required this.name, required this.score});

  @override
  final String name;
  @override
  final int score;

  @override
  String toString() {
    return 'LeaderBoardEntry(name: $name, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderBoardEntryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderBoardEntryImplCopyWith<_$LeaderBoardEntryImpl> get copyWith =>
      __$$LeaderBoardEntryImplCopyWithImpl<_$LeaderBoardEntryImpl>(
          this, _$identity);
}

abstract class _LeaderBoardEntry implements LeaderBoardEntry {
  const factory _LeaderBoardEntry(
      {required final String name,
      required final int score}) = _$LeaderBoardEntryImpl;

  @override
  String get name;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$LeaderBoardEntryImplCopyWith<_$LeaderBoardEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
