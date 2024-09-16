import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:deely/presentation/screens/landing/tabs/home/model/data.dart';
import 'package:deely/presentation/screens/landing/tabs/home/widgets/like_widget.dart';
import 'package:flutter/material.dart';

class ResturantWidget extends StatelessWidget {
  const ResturantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: resturants.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final deal = resturants[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        deal['image'],
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: MyColors.white)
                        ),
                        child: TextUtils.txt(
                          text:deal['discount'],
                            color: MyColors.white,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: LikeIconButton()
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtils.txt(
                        text: deal['title'],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                      ),
                      SizedBox(height: 4),
                      TextUtils.txt(
                        text:
                        deal['description'],
                          color: MyColors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                       Divider(
                          thickness: 1.2,
                          color: MyColors.dividerIcon,
                        ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: MyColors.grey,
                            size: 14,
                          ),
                          SizedBox(width: 4),
                          TextUtils.txt(
                            text:
                            deal['location'],
                              color: MyColors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                          ),
                          SizedBox(width: 4),
                          TextUtils.txt(
                            text:
                            '+5 more',
                              color: MyColors.lightBlue,
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: MyColors.green,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              TextUtils.txt(
                                text:
                                deal['rating'].toString(),
                                  color: MyColors.green,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                              ),
                              SizedBox(width: 4),
                              TextUtils.txt(
                                text:
                                '(${deal['reviews']} reviews)',
                                  color: MyColors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                              ),
                            ],
                          ),
                          Spacer(),
                          TextUtils.txt(
                            text:
                            'Sold: ${deal['sold']}',
                              color: Colors.grey,
                              fontSize: 12,
                            fontWeight: FontWeight.w400
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
