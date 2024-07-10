import 'package:equatable/equatable.dart';

class PlayerEntity extends Equatable {
  final String? url;

  const PlayerEntity({required this.url});

  @override
  List<Object?> get props => [url];
}
