import 'package:video_player_app/data/datasources/player_remote_data_source.dart';
import 'package:video_player_app/data/models/player_data.dart';
import 'package:video_player_app/domain/entities/player_entity.dart';
import 'package:video_player_app/domain/repositories/player_repository.dart';

class PlayerRepositoryImpl implements PlayerRepository {
  PlayerRemoteDataSource playerRemoteDataSource;

  PlayerRepositoryImpl({required this.playerRemoteDataSource});

  @override
  Future<PlayerEntity> getPlayerData() async {
    final PlayerData playerData = await playerRemoteDataSource.getPlayerData();
    final PlayerEntity playerEntity = playerData.toEntity();
    return playerEntity;
  }
}
