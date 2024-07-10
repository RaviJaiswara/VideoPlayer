import 'package:video_player_app/domain/entities/player_entity.dart';
import 'package:video_player_app/domain/repositories/player_repository.dart';

class GetPlayVideoUsecases {
  final PlayerRepository playerRepository;
  GetPlayVideoUsecases(this.playerRepository);

  Future<PlayerEntity> call() async {
    return await playerRepository.getPlayerData();
  }
}
