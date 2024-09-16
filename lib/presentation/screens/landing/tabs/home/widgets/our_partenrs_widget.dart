import 'package:deely/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurPartnersWidget extends StatelessWidget {
  final String partner;

  OurPartnersWidget({
    required this.partner,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        children: [
          Container(
            width: Get.width * 0.25,
            height: Get.height * 0.08,
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.dividerIcon),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(partner),
            ),
          ),
        ],
      ),
    );
  }
}


