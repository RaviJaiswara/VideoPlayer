import 'package:video_player_app/domain/entities/player_entity.dart';

abstract class PlayerRepository {
  Future<PlayerEntity> getPlayerData();
}
