import 'package:get_it/get_it.dart';
import 'package:video_player_app/data/datasources/player_remote_data_source.dart';
import 'package:video_player_app/data/datasources/remote/player_data_source_impl.dart';
import 'package:video_player_app/data/repositories/player_repository_impl.dart';
import 'package:video_player_app/domain/repositories/player_repository.dart';
import 'package:video_player_app/domain/usecases/get_play_video_usecases.dart';
import 'package:video_player_app/presentation/views/splash/bloc/splash_bloc.dart';

final getId = GetIt.instance;

void init() {
  getId.registerFactory(() => SplashBloc(getPlayVideoUsecases: getId()));

  getId.registerLazySingleton(() => GetPlayVideoUsecases(getId()));

  getId.registerLazySingleton<PlayerRepository>(
      () => PlayerRepositoryImpl(playerRemoteDataSource: getId()));

  getId.registerLazySingleton<PlayerRemoteDataSource>(
      () => PlayerDataSourceImpl());
}
