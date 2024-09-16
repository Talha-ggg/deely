import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscountWidget extends StatelessWidget {
  final String discount;

  DiscountWidget({
    required this.discount,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children:[
          Container(
            width: Get.width*0.22,
            height: Get.height *0.05,
            decoration: BoxDecoration(
              border: Border.all(color:MyColors.borderButton ),
              borderRadius: BorderRadius.circular(10),
            ),
            child:   Center(
              child: TextUtils.txt(
                  text: discount,
                  fontSize: 12,
                  color: MyColors.dealsButton,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
        ],
      ),
    );
  }
}