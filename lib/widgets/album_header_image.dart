import 'package:flutter/material.dart';
import 'package:fyn_music/constants.dart';

class AlbumHeaderImage extends StatelessWidget {
  String albumTitle;
  String artistName;

  AlbumHeaderImage({@required this.albumTitle, @required this.artistName})
      : assert(albumTitle != null),
        assert(artistName != null);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                )
              ],
              color: kBlack,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200))),
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        Positioned(
          bottom: 60,
          left: 80,
          child: Text(
            albumTitle,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 120,
          child: Text(
            artistName,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
