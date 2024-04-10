// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AIChatMessage {
  String get message => throw _privateConstructorUsedError;
  bool get isUser => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AIChatMessageCopyWith<AIChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIChatMessageCopyWith<$Res> {
  factory $AIChatMessageCopyWith(
          AIChatMessage value, $Res Function(AIChatMessage) then) =
      _$AIChatMessageCopyWithImpl<$Res, AIChatMessage>;
  @useResult
  $Res call({String message, bool isUser, DateTime time, int id});
}

/// @nodoc
class _$AIChatMessageCopyWithImpl<$Res, $Val extends AIChatMessage>
    implements $AIChatMessageCopyWith<$Res> {
  _$AIChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isUser = null,
    Object? time = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIChatMessageImplCopyWith<$Res>
    implements $AIChatMessageCopyWith<$Res> {
  factory _$$AIChatMessageImplCopyWith(
          _$AIChatMessageImpl value, $Res Function(_$AIChatMessageImpl) then) =
      __$$AIChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isUser, DateTime time, int id});
}

/// @nodoc
class __$$AIChatMessageImplCopyWithImpl<$Res>
    extends _$AIChatMessageCopyWithImpl<$Res, _$AIChatMessageImpl>
    implements _$$AIChatMessageImplCopyWith<$Res> {
  __$$AIChatMessageImplCopyWithImpl(
      _$AIChatMessageImpl _value, $Res Function(_$AIChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isUser = null,
    Object? time = null,
    Object? id = null,
  }) {
    return _then(_$AIChatMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AIChatMessageImpl extends _AIChatMessage {
  const _$AIChatMessageImpl(
      {required this.message,
      this.isUser = true,
      required this.time,
      required this.id})
      : super._();

  @override
  final String message;
  @override
  @JsonKey()
  final bool isUser;
  @override
  final DateTime time;
  @override
  final int id;

  @override
  String toString() {
    return 'AIChatMessage(message: $message, isUser: $isUser, time: $time, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIChatMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isUser, time, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AIChatMessageImplCopyWith<_$AIChatMessageImpl> get copyWith =>
      __$$AIChatMessageImplCopyWithImpl<_$AIChatMessageImpl>(this, _$identity);
}

abstract class _AIChatMessage extends AIChatMessage {
  const factory _AIChatMessage(
      {required final String message,
      final bool isUser,
      required final DateTime time,
      required final int id}) = _$AIChatMessageImpl;
  const _AIChatMessage._() : super._();

  @override
  String get message;
  @override
  bool get isUser;
  @override
  DateTime get time;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$AIChatMessageImplCopyWith<_$AIChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
