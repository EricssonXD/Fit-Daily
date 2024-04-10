import 'package:fit_daily/util/isar/isar_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_chat_provider.g.dart';
part 'ai_chat_provider.freezed.dart';

@riverpod
class AIChatManager extends _$AIChatManager {
  late final Isar isar;
  late final Stream<List<AIChatMessage>> _watchStream;

  void _init() {
    isar = IsarManager.isar;
    // final query = isar.aIChatMessages.where().sortByTimeDesc();
    // _watchStream = query.watch(limit: 30);

    // _watchStream.listen((event) {
    //   state = event.reversed.toList();
    //   ref.notifyListeners();
    // });
  }

  void sendMessage({String? message}) {
    if (message != null) {
      final chatMessage = AIChatMessage(
        id: isar.aIChatMessages.autoIncrement(),
        message: message,
        isUser: true,
        time: DateTime.now(),
      );
      isar.write((isar) => isar.aIChatMessages.put(chatMessage));
      state.add(chatMessage);
      ref.notifyListeners();
    }
  }

  void replyMessage({String? message}) {
    if (message != null) {
      final chatMessage = AIChatMessage(
        id: isar.aIChatMessages.autoIncrement(),
        message: message,
        isUser: true,
        time: DateTime.now(),
      );

      isar.write((isar) => isar.aIChatMessages.put(chatMessage));
      // ref.notifyListeners();
    }
  }

  @override
  List<AIChatMessage> build() {
    _init();
    return isar.aIChatMessages
        .where()
        .sortByTimeDesc()
        .findAll(limit: 30)
        .reversed
        .toList();
  }
}

@Collection()
@freezed
class AIChatMessage with _$AIChatMessage {
  const factory AIChatMessage({
    required String message,
    @Default(true) bool isUser,
    required DateTime time,
    required int id,
  }) = _AIChatMessage;

  const AIChatMessage._();
}

// final _mockMessages = [
//   AIChatMessage(
//     message: 'Hello',
//     isUser: true,
//     time: DateTime(2017, 9, 7, 17, 30),
//   ),
//   AIChatMessage(
//     message: 'Hi',
//     isUser: false,
//     time: DateTime(2017, 9, 7, 17, 31),
//   ),
//   AIChatMessage(
//     message: 'How are you?',
//     isUser: true,
//     time: DateTime(2017, 9, 7, 17, 32),
//   ),
//   AIChatMessage(
//     message: 'I am fine',
//     isUser: false,
//     time: DateTime(2017, 9, 7, 17, 33),
//   ),
//   AIChatMessage(
//     message:
//         'How are you? ajdosajfoiasgiogjoisaoi ajfoiajg ajfigajsog aoig a soigaoig oiasgj oia',
//     isUser: true,
//     time: DateTime(2017, 9, 7, 17, 30),
//   ),
// ];
