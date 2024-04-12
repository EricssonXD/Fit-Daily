import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_provider.g.dart';
part 'settings_provider.freezed.dart';

@riverpod
class SettingsManager extends _$SettingsManager {
  @override
  Settings build() {
    return const Settings();
  }
}

@freezed
abstract class Settings with _$Settings {
  const factory Settings() = _Settings;
}
