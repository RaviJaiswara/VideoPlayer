import 'package:video_player_app/data/datasources/player_remote_data_source.dart';
import 'package:video_player_app/data/models/player_data.dart';

class PlayerDataSourceImpl extends PlayerRemoteDataSource {
  @override
  Future<PlayerData> getPlayerData() async {
    String data = '{"url":"rtsp://guardnet.selfip.com:7100"}';
    final PlayerData playerData = playerDataFromJson(data);
    return playerData;
  }
}
