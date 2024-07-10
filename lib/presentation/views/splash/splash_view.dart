import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player_app/presentation/views/splash/bloc/splash_bloc.dart';
import 'package:video_player_app/presentation/views/splash/bloc/splash_event.dart';
import 'package:video_player_app/presentation/views/splash/bloc/splash_state.dart';
import 'package:video_player_app/presentation/views/video_player/video_player_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashView();
  }
}

class _SplashView extends State<SplashView> {
  @override
  void initState() {
    BlocProvider.of<SplashBloc>(context).add(GetSplashDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<SplashBloc, SplashState>(
          builder: (context, state) {
            return getBody(state, context);
          },
          listener: (context, state) {
            if (state is SplashLoadedState) {
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VideoPlayerView(
                            url: state.playerEntity.url ?? '')));
              });
            }
          },
        ));
  }

  Widget getBody(SplashState state, BuildContext context) {
    return const Center(
      child: Text(
        'VLC Video Player',
        style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
