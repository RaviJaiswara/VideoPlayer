// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class VideoPlayerView extends StatefulWidget {
  String url;
  VideoPlayerView({super.key, required this.url});

  @override
  State<StatefulWidget> createState() {
    return _VideoPlayerView();
  }
}

class _VideoPlayerView extends State<VideoPlayerView> {
  late VlcPlayerController _videoPlayerController;
  late bool _isplaying = true;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VlcPlayerController.network(
      widget.url,
      hwAcc: HwAcc.full,
      autoPlay: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Text('Video Player'),
        ),
        body: getBody(context));
  }

  Widget getBody(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 225,
            child: VlcPlayer(
              aspectRatio: 16 / 9,
              controller: _videoPlayerController,
              placeholder: const Center(child: CircularProgressIndicator()),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (_isplaying)
              TextButton(
                onPressed: () {
                  _videoPlayerController.pause();
                  setState(() {
                    _isplaying = false;
                  });
                },
                child: const Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              )
            else
              TextButton(
                onPressed: () {
                  setState(() {
                    _isplaying = true;
                    _videoPlayerController.play();
                  });
                },
                child: const Icon(
                  Icons.pause,
                  size: 50,
                ),
              ),
          ]),
        ]);
  }
}
