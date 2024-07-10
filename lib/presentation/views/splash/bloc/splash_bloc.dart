import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player_app/domain/usecases/get_play_video_usecases.dart';
import 'package:video_player_app/presentation/views/splash/bloc/splash_event.dart';
import 'package:video_player_app/presentation/views/splash/bloc/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetPlayVideoUsecases? getPlayVideoUsecases;

  SplashBloc({this.getPlayVideoUsecases}) : super(SplashInitialState()) {
    on<GetSplashDataEvent>((event, emit) async {
      emit(SplashLoadingState());
      final data = await getPlayVideoUsecases!();
      emit(SplashLoadedState(data));
    });
  }
}
