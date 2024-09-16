// import 'package:deely/core/constants/colors.dart';
// import 'package:deely/core/utils/text_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class DialogUtils {
//   static Future<void> showMyDialog(BuildContext context, String alertText) async {
//     Animation<Color?> colorAnimation = TweenSequence<Color?>(
//       [
//         TweenSequenceItem(
//           tween: ColorTween(begin: MyColors.loadingRed, end: MyColors.loadingRed),
//           weight: 1,
//         ),
//       ],
//     ).animate(CurvedAnimation(parent: AlwaysStoppedAnimation<double>(1), curve: Curves.linear));
//
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return Dialog(
//           insetPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
//           child: Container(
//             width: double.infinity,
//             decoration: BoxDecoration(color: MyColors.backgroundLight, borderRadius: BorderRadius.circular(15)),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: Get.width * 0.05),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Column(
//                     children: [
//                       SizedBox(
//                         width: Get.width * 0.15,
//                         height: Get.width * 0.15,
//                         child: AnimatedBuilder(
//                           animation: colorAnimation,
//                           builder: (context, child) {
//                             return CircularProgressIndicator(
//                               valueColor: colorAnimation,
//                               backgroundColor: MyColors.loadingWhite,
//                               value: null,
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(height: MediaQuery.of(context).size.height * 0.01),
//                       TextUtils.txt(text: alertText, fontWeight: FontWeight.w600, fontSize: 20, color: MyColors.greenText),
//                       TextUtils.txt(
//                           text: 'Please wait for a second!', fontSize: 16, color: MyColors.greyText, fontWeight: FontWeight.w400),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
