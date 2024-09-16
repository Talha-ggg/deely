import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: TextUtils.txt(text: 'Coming Soon ...',fontSize: 20,color: MyColors.black,fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
