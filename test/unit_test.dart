import 'package:flutter_test/flutter_test.dart';
import 'package:video_player_app/data/models/player_data.dart';

void main() {
  final player = PlayerData(url: "rtsp://guardnet.selfip.com:7100");

  test("Test task model", () {
    expect(player.url, "rtsp://guardnet.selfip.com:7100");
  });
}
