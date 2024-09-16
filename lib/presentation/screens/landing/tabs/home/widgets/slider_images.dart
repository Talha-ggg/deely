import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:deely/presentation/screens/landing/tabs/home/model/data.dart';
import 'package:get/get.dart';

class CustomCarousel extends StatefulWidget {
  CustomCarousel({super.key});

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.3,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.95,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: [
                        // Image
                        Image.asset(
                          images[index],
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),

                        Positioned(
                            top: 15,
                            right: 8,
                            child:TextUtils.txt(
                              text:
                              'Only AED 75',
                              fontSize: 20,
                              color: MyColors.white,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 15,
                          right: 10,
                          child: TextUtils.txt(
                            text:
                            texts[index],
                              fontSize: 16,
                              color: MyColors.white,
                              fontWeight: FontWeight.w400,
                            ),
                        ),
                        Positioned(
                          top: 30,
                          left: 16,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                                color: MyColors.white,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: MyColors.white)
                            ),
                            child: TextUtils.txt(
                              text:'30% Off',
                              color: MyColors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: _currentIndex == index ? 18.0 : 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _currentIndex == index ? MyColors.green : MyColors.dividerIcon,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
