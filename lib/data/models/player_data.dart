// ignore_for_file: prefer_const_constructors_in_immutables, use_super_parameters

import 'dart:convert';

import 'package:video_player_app/domain/entities/player_entity.dart';

PlayerData playerDataFromJson(String str) =>
    PlayerData.fromJson(json.decode(str));

class PlayerData extends PlayerEntity {
  PlayerData({String? url}) : super(url: url);

  factory PlayerData.fromJson(Map<String, dynamic> json) =>
      PlayerData(url: json['url']);

  PlayerEntity toEntity() {
    return PlayerEntity(url: url);
  }
}
