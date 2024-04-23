import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_provider.g.dart';

@riverpod
class FireStoreManager extends _$FireStoreManager {
  late final FirebaseFirestore _db;
  final _host = Platform.isAndroid ? '10.0.2.2' : 'localhost';
  // final _host = 'localhost';

  static const _useEmulator = false;

  @override
  FirebaseFirestore build() {
    _db = FirebaseFirestore.instance;
    if (_useEmulator) {
      _db.useFirestoreEmulator(_host, 8080);
      _db.settings = Settings(
        host: _host,
        persistenceEnabled: false,
      );
    }
    print("Firebase Print");

    return _db;
  }
}
