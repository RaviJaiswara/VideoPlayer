import 'package:video_player_app/domain/entities/player_entity.dart';

abstract class SplashState {}

class SplashInitialState extends SplashState {}

class SplashLoadingState extends SplashState {}

class SplashLoadedState extends SplashState {
  PlayerEntity playerEntity;
  SplashLoadedState(this.playerEntity);
}

class SplashErrorState extends SplashState {
  String error;
  SplashErrorState(this.error);
}
