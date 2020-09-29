import 'package:flutter/material.dart';
import 'package:fyn_music/constants.dart';

class MusicSeekTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16), color: kBlack),
                  ),
                ),
                Positioned(
                  left: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey),
                    ),
                  ),
                ),
                Positioned(
                  left: 120,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.black),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "03:16",
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
