import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:deely/presentation/screens/landing/tabs/home/model/data.dart';
import 'package:deely/presentation/screens/landing/tabs/home/widgets/appbar_widget.dart';
import 'package:deely/presentation/screens/landing/tabs/home/widgets/discount_widget.dart';
import 'package:deely/presentation/screens/landing/tabs/home/widgets/our_partenrs_widget.dart';
import 'package:deely/presentation/screens/landing/tabs/home/widgets/resturant_widget.dart';
import 'package:deely/presentation/screens/landing/tabs/home/widgets/slider_images.dart';
import 'package:deely/presentation/screens/landing/tabs/home/widgets/upcoming_deal_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/filter_category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: Get.height * 0.17,
                    child: HomeAppBarWidget()
                ),
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.greenAppBar
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16,right:16,top: 20,bottom: 10),
                          child: TextUtils.txt(text: 'Filter By Category',color: MyColors.black,fontSize: 18,fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: Get.height * 0.13,
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return CategoryCard(
                                name: categories[index]["name"],
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            thickness: 1.2,
                            color: MyColors.dividerIcon,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                height:Get.height * 0.14,
                  decoration: BoxDecoration(
                    color: MyColors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16,right:16,top: 5,bottom: 5),
                        child: TextUtils.txt(text: 'Filter By Discount',color: MyColors.black,fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: discounts.length,
                          itemBuilder: (context, index) {
                            return DiscountWidget(
                              discount: discounts[index]["discount"],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          thickness: 1.2,
                          color: MyColors.dividerIcon,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height:Get.height * 0.15,
                  decoration: BoxDecoration(
                      color: MyColors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16,right:16,top: 5,bottom: 5),
                        child: TextUtils.txt(text: 'Upcoming Deal',color: MyColors.black,fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: deals.length,
                          itemBuilder: (context, index) {
                            return UpcomingDealWidget(
                              deal: deals[index]["deal"],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                CustomCarousel(),
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.white
                  ),
                  height: Get.height*0.37,
                    child: ResturantWidget()
                ),
                Container(
              height: Get.height * 0.2,
              decoration: BoxDecoration(
                color: MyColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 15, bottom: 5),
                    child: TextUtils.txt(
                      text: 'Our Partners',
                      color: MyColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        childAspectRatio: 1,
                      ),
                      itemCount: partners.length,
                      itemBuilder: (context, index) {
                        return OurPartnersWidget(
                          partner: partners[index]["partner"]!,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
