import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;

   CategoryCard({
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children:[
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColors.green,
            ),
            child: IconButton(
              icon: Image.asset('assets/images/dinning.png'),
              iconSize: 15,
              onPressed: () {
              },
            ),
          ),
          SizedBox(height: 4),
          TextUtils.txt(
            text: name,
            fontSize: 12,
          fontWeight: FontWeight.w400
          ),
        ],
      ),
    );
  }
}