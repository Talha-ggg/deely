import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpcomingDealWidget extends StatelessWidget {
  final String deal;

  UpcomingDealWidget({
    required this.deal,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children:[
          Container(
            width: Get.width*0.125,
            height: Get.height *0.065,
            decoration: BoxDecoration(
              border: Border.all(color:MyColors.borderButton ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: TextUtils.txt(
                  text: deal,
                  fontSize: 14,
                  color: MyColors.dealsButton,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
        ],
      ),
    );
  }
}