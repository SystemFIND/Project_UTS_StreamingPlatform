import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Home, Search, Saved, Downloads, Me }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

  class CustomBottomBarState extends State<CustomBottomBar> {
    int selectedIndex = 0;

    List<BottomMenuModel> bottomMenuList = [
      BottomMenuModel(
        icon: ImageConstant.imgNavHome,
        activeIcon: ImageConstant.imgNavHome,
        title: "Home",
        type: BottomBarEnum.Home,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgNavSearch,
        activeIcon: ImageConstant.imgNavSearch,
        title: "Search",
        type: BottomBarEnum.Search,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgNavSaved,
        activeIcon: ImageConstant.imgNavSaved,
        title: "Saved",
        type: BottomBarEnum.Saved,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgNavDownloads,
        activeIcon: ImageConstant.imgNavDownloads,
        title: "Downloads",
        type: BottomBarEnum.Downloads,
      ),
      BottomMenuModel(
        icon: ImageConstant.imgNavMe,
        activeIcon: ImageConstant.imgNavMe,
        title: "Me",
        type: BottomBarEnum.Me,
      ),
    ];

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 74.h,
        decoration: BoxDecoration(
          color: Color(0xFF1F1D35),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 24.h,
                      width: 24.h,
                      color: Color(0XFFCBC9D8),
                    ),
                    Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelMedium!.copyWith(
                        color: Color(0XFFCBC9D8),
                      ),
                    )
                  ],
                ),
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.h,
                    width: 24.h,
                    color: Color(0XFFFFFFFF),
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelMediumOnPrimary.copyWith(
                      color: Color(0XFFFFFFFF),
                    ),
                  )
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex = index;
            widget.onChanged?.call(bottomMenuList[index].type);
            setState(() {});
          },
        ),
      );
    }
  }

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}