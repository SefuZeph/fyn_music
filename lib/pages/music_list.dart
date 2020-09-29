import 'package:flutter/material.dart';
import 'package:fyn_music/constants.dart';
import 'package:fyn_music/model/AlbumModel.dart';
import 'package:fyn_music/widgets/album_header_image.dart';
import 'package:fyn_music/widgets/music_player_controller.dart';

class MusicList extends StatelessWidget {
  AlbumModel albumModel = AlbumModel();

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
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              albumModel.musicList[index],
                              style: TextStyle(
                                  color: kBlack.withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(albumModel.musicDuration[index],
                                style: TextStyle(
                                    color: kBlack.withOpacity(0.7),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14)),
                          )
                        ],
                      ),
                    );
                  }),
            ),
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
