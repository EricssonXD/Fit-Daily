import 'package:senior_active_adventure/features/ai_chat/model/ai_chat_provider.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class IsarManager {
  static const _schemas = [AIChatMessageSchema];

  static void init() async {
    final dir = await getApplicationDocumentsDirectory();
    Isar.open(
      schemas: _schemas,
      directory: dir.path,
    );
  }

  static Isar get isar {
    Isar isar = Isar.get(schemas: _schemas);
    return isar;
  }
}
