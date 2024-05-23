import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState(int index) = _State;
}
