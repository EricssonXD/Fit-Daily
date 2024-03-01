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
  $Res call({String message, bool isUser});
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
  $Res call({String message, bool isUser});
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
    ));
  }
}

/// @nodoc

class _$AIChatMessageImpl implements _AIChatMessage {
  const _$AIChatMessageImpl({required this.message, required this.isUser});

  @override
  final String message;
  @override
  final bool isUser;

  @override
  String toString() {
    return 'AIChatMessage(message: $message, isUser: $isUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIChatMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isUser, isUser) || other.isUser == isUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AIChatMessageImplCopyWith<_$AIChatMessageImpl> get copyWith =>
      __$$AIChatMessageImplCopyWithImpl<_$AIChatMessageImpl>(this, _$identity);
}

abstract class _AIChatMessage implements AIChatMessage {
  const factory _AIChatMessage(
      {required final String message,
      required final bool isUser}) = _$AIChatMessageImpl;

  @override
  String get message;
  @override
  bool get isUser;
  @override
  @JsonKey(ignore: true)
  _$$AIChatMessageImplCopyWith<_$AIChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
