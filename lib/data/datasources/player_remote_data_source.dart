import 'package:video_player_app/data/models/player_data.dart';

abstract class PlayerRemoteDataSource {
  Future<PlayerData> getPlayerData();
}
