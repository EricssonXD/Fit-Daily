import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:senior_active_adventure/firebase/firestore_provider.dart';

part 'steps_db_provider.g.dart';

@riverpod
class StepsDBManager extends _$StepsDBManager {
  void init() {}

  @override
  CollectionReference build() {
    return ref
        .watch(fireStoreManagerProvider)
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('steps');
  }
}
