import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player_app/core/locator/dependency_injector.dart';
import 'package:video_player_app/presentation/views/splash/bloc/splash_bloc.dart';
import 'package:video_player_app/presentation/views/splash/splash_view.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.title,
    this.message,
  });

  final String? title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SplashBloc(getPlayVideoUsecases: getId()),
          ),
        ],
        child: MaterialApp(
          title: 'Task List',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: const SplashView(),
        ));
  }
}
