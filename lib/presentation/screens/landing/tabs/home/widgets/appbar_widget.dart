import 'package:deely/core/constants/colors.dart';
import 'package:deely/core/utils/text_utils.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.greenAppBar,
      elevation: 0,
      title: Row(
        children: [
          DropdownButton<String>(
            value: 'UAE',
            icon: Icon(Icons.keyboard_arrow_down_rounded,color: MyColors.black,size: 18,),
            underline: SizedBox(),
            items: <String>['UAE', 'AUS', 'PAK'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: TextUtils.txt(text: value,color: MyColors.black,fontSize: 14,fontWeight: FontWeight.w400),
              );
            }).toList(),
            onChanged: (String? newValue) {
            },
          ),
          Spacer(),
        Image.asset('assets/icons/appbar_icon.png',height: 26,),
          Spacer(),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart_sharp,color: MyColors.filterIcon,),
                onPressed: () {
                },
              ),
              Positioned(
                right: 3,
                top: 3,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: TextUtils.txt(
                      text: '03',color: MyColors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,bottom: 25),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: MyColors.searchIcon,
                      ),
                      fillColor: MyColors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.search_sharp, color: MyColors.searchIcon,size: 30,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [MyColors.greenNav, MyColors.lightBlue],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/icons/filter_icon.png',height: 15,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
