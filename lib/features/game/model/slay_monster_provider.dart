import 'dart:async';
import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import "package:sensors_plus/sensors_plus.dart";

part 'slay_monster_provider.g.dart';

@riverpod
class SlayMonsterManager extends _$SlayMonsterManager {
  static const _samplingPeriod = SensorInterval.uiInterval;

  void init() {
    _accelerometerSubscription = userAccelerometerEventStream(
      samplingPeriod: _samplingPeriod,
    ).listen(
      accelerometerEvent,
      onError: (error) {
        // Logic to handle error
        // Needed for Android in case sensor is not available
      },
      cancelOnError: true,
    );

    _gyroscopeSubscription = gyroscopeEventStream().listen(
      gyroscopeEvent,
      onError: (error) {
        // Logic to handle error
        // Needed for Android in case sensor is not available
      },
      cancelOnError: true,
    );
  }

  void gyroscopeEvent(GyroscopeEvent event) {
    _gyroscope = event;
  }

  double _vy = 0;
  double _dy = 0;
  double _vx = 0;
  double _dx = 0;
  double _vz = 0;
  double _dz = 0;
  double _dl = 0;

  final double _dt = _samplingPeriod.inMicroseconds * 1e-6;
  static const double _slashThreshold = 25;

  void accelerometerEvent(UserAccelerometerEvent event) {
    const th = 1;
    if ([event.x, event.y, event.z].reduce(max) > th ||
        [event.x, event.y, event.z].reduce(min) < -th) {
      _slashing = true;
      _vy += (_accelerometer.y + event.y) / 2 * _dt;
      _dy += _vy * _dt;

      _vx += (_accelerometer.x + event.x) / 2 * _dt;
      _dx += _vx * _dt;

      _vz += (_accelerometer.z + event.z) / 2 * _dt;
      _dz += _vz * _dt;

      _dl += [_dy, _dx, _dz].reduce(max);
      // _dl += sqrt(_dy * _dy + _dx * _dx + _dz * _dz);
    } else {
      _vy = 0;
      _vx = 0;
      _vz = 0;
      if (_slashing) {
        _slashing = false;
        _dl = 0;
      }
    }

    if (_dl > _slashThreshold) {
      _slashing = false;
      _dl = 0;
      _vy = 0;
      _vx = 0;
      _vz = 0;
      if (_slashingHalf) {
        state++;
        _accelerometer = UserAccelerometerEvent(0, 0, 0);
      }
      _slashingHalf = !_slashingHalf;
    }
    _accelerometer = event;
  }

  late StreamSubscription<UserAccelerometerEvent> _accelerometerSubscription;
  late StreamSubscription<GyroscopeEvent> _gyroscopeSubscription;
  UserAccelerometerEvent _accelerometer = UserAccelerometerEvent(0, 0, 0);
  // ignore: unused_field
  GyroscopeEvent _gyroscope = GyroscopeEvent(0, 0, 0);

  bool _slashing = false;
  bool _slashingHalf = false;

  void dispose() {
    _accelerometerSubscription.cancel();
    _gyroscopeSubscription.cancel();
  }

  @override
  int build() {
    init();
    ref.onDispose(dispose);
    return 0;
  }
}

// double _calculateDistance(double u, double a, double t) {
//   return u * t + 1 / 2 * a * t * t;
// }
