import 'package:flutter/material.dart';
import 'package:fyn_music/constants.dart';
import 'package:fyn_music/widgets/album_header_image.dart';
import 'package:fyn_music/widgets/music_player_controller.dart';
import 'package:fyn_music/widgets/music_seek_timer.dart';

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kPaddingX, right: kPaddingX),
            child: AlbumHeaderImage(
              albumTitle: "Perception",
              artistName: "NF",
            ),
          ),
          Expanded(
            flex: 4,
            child: MusicSeekTimer(),
          ),
          Expanded(
            flex: 2,
            child: MusicPlayerController(),
          )
        ],
      ),
    );
  }
}
