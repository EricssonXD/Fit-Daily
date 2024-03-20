import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_chat_provider.g.dart';
part 'ai_chat_provider.freezed.dart';

@riverpod
class AIChatManager extends _$AIChatManager {
  void sendMessage({String? message}) {
    if (message != null) {
      state.add(AIChatMessage(message: message, isUser: true));
      ref.notifyListeners();
    }
  }

  @override
  List<AIChatMessage> build() {
    return [..._mockMessages];
  }
}

const _mockMessages = [
  AIChatMessage(message: 'Hello', isUser: true),
  AIChatMessage(message: 'Hi', isUser: false),
  AIChatMessage(message: 'How are you?', isUser: true),
  AIChatMessage(message: 'I am fine', isUser: false),
  AIChatMessage(
      message:
          'How are you? ajdosajfoiasgiogjoisaoi ajfoiajg ajfigajsog aoig a soigaoig oiasgj oia',
      isUser: true),
];

@freezed
abstract class AIChatMessage with _$AIChatMessage {
  const factory AIChatMessage({
    required String message,
    required bool isUser,
  }) = _AIChatMessage;
}
