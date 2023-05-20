import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/widgets/videoplayerwidget.dart';
import 'package:file_picker/file_picker.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final asset = 'assets/videos/universe.mp4';

  // final File file = File('C:\Users\hp\Downloads\universe.mp4');
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [VideoPlayerWidget(controller: controller), buildAddButton()],
    );
  }

  Widget buildAddButton() => Container(
        padding: const EdgeInsets.all(32),
        child: FloatingActionButton(onPressed: () async {
          final file = await pickVideoFile();

          if (file == null) return;
          controller = VideoPlayerController.file(file)
            ..addListener(() => setState(() {}))
            ..setLooping(true)
            ..initialize().then((_) => controller.play());
          setState(() {});
        }),
      );

  Future<File?> pickVideoFile() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.video);
    if (result == null) return null;
    // return File(result.files.single.name);
    return File(result.files.single.name);
  }
}


/*

THIS IS FOR ASSET VIDEO PLAYER
.
.
.
.
.
.
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/widgets/videoplayerwidget.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final asset = 'assets/videos/universe.mp4';
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VideoPlayerWidget(controller: controller),
      ],
    );
  }
}


.
.
.
.
.


*/