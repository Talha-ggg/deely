import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 20,
      circleColor: CircleColor(
        start: Color(0xff00ddff),
        end: Color(0xff0099cc),
      ),
      bubblesColor: BubblesColor(
        dotPrimaryColor: Color(0xff33b5e5),
        dotSecondaryColor: Color(0xff0099cc),
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? Colors.red : Colors.white,
          size: 20,
        );
      },
      likeCount: 0,
      countBuilder: (int? count, bool isLiked, String text) {
        var color = isLiked ? Colors.red : Colors.white;
        Widget result;
        if (count == 0) {
          result = Text(
            "",
            style: TextStyle(color: color),
          );
        } else {
          result = Text(
            '',
            style: TextStyle(color: color),
          );
        }
        return result;
      },
    );
  }
}
