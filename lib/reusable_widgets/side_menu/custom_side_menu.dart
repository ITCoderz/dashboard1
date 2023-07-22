import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/constants/constant_lists.dart';
import '../../utils/constants/constant_strings.dart';
import '../../utils/sizes/platform_sizes.dart';
import '../../utils/text_styles/text_styles.dart';
import '../buttons/side_menu_logout_button.dart';

class CustomMenuBar extends StatelessWidget {
  final double maxWidth;
  final int selectedIndex;

  const CustomMenuBar({
    super.key,
    required this.maxWidth,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        seconds: 1,
      ),
      padding: maxWidth > PlatformSizes.maxMediumScreenWidth.round()
          ? const EdgeInsets.only(
              left: 15,
            )
          : const EdgeInsets.symmetric(
              horizontal: 5,
            ),
      width: maxWidth > PlatformSizes.maxMediumScreenWidth.round() ? 250 : 80,
      height: context.height * 1,
      decoration: const BoxDecoration(
        color: CColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(
            10,
          ),
          topRight: Radius.circular(
            10,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: maxWidth > PlatformSizes.maxMediumScreenWidth.round()
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Image.asset(
                      //   Assets.dashboardAppLogo,
                      //   height: 90,
                      // ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: CColors.whiteColor,
                            ),
                          ),
                          10.pw,
                          const Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Theodore Hoffman",
                                    style: CCustomTextStyles.white515,
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Founder",
                                    style: CCustomTextStyles.white514,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      30.pw,
                    ],
                  ).paddingSymmetric(
                    horizontal: 15,
                  ),
                  50.ph,
                  Flexible(
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: ConstantLists.menuList.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          5.ph,
                      itemBuilder: (BuildContext context, int index) {
                        return SelectionTile(
                          itemIndex: index,
                          selectedIndex: selectedIndex,
                          menuTitle: ConstantLists.menuList[index].menuTitle,
                          iconData: ConstantLists.menuList[index].iconData,
                        );
                      },
                    ),
                  ),
                  50.ph,
                  LogOutButton(
                    height: 50,
                    width: 205,
                    logOutFunction: () {},
                  )
                ],
              )
            : IntrinsicHeight(
                child: NavigationRail(
                  backgroundColor: CColors.primaryColor,
                  selectedIndex: selectedIndex,
                  useIndicator: true,
                  onDestinationSelected: (int index) {
                    switch (index) {
                      case 0:
                        {
                          context.goNamed(
                            ConstantStrings.dashBoardRouteName,
                          );
                        }
                        break;

                      default:
                        break;
                    }
                  },
                  unselectedLabelTextStyle: CCustomTextStyles.sideMenu515,
                  selectedLabelTextStyle: CCustomTextStyles.white515,
                  indicatorColor: CColors.whiteColor,
                  selectedIconTheme: const IconThemeData(
                    color: CColors.primaryColor,
                    size: 17,
                  ),
                  unselectedIconTheme: const IconThemeData(
                    color: CColors.whiteColor,
                    size: 17,
                  ),
                  labelType: NavigationRailLabelType.selected,
                  leading: Column(
                    children: [
                      30.ph,
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: CColors.whiteColor,
                        ),
                      ),
                      30.ph,
                    ],
                  ),
                  destinations: [
                    for (int index = 0;
                        index < ConstantLists.menuList.length;
                        index++) ...[
                      NavigationRailDestination(
                        icon: Icon(
                          ConstantLists.menuList[index].iconData,
                        ),
                        selectedIcon:
                            Icon(ConstantLists.menuList[index].iconData),
                        label: FittedBox(
                            child:
                                Text(ConstantLists.menuList[index].menuTitle)),
                      ),
                    ]
                  ],
                  trailing: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      30.ph,
                      IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.arrowRightToBracket,
                          color: CColors.whiteColor,
                        ),
                        onPressed: () {},
                      ),
                      30.ph,
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class SelectionTile extends StatelessWidget {
  final int itemIndex, selectedIndex;
  final String menuTitle;
  final IconData? iconData;

  const SelectionTile({
    super.key,
    required this.itemIndex,
    required this.selectedIndex,
    required this.menuTitle,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            10,
          ),
          topLeft: Radius.circular(
            10,
          ),
        ),
      ),
      child: ListTile(
        onTap: selectedIndex == itemIndex
            ? null
            : () {
                itemIndex == 0
                    ? context.goNamed(
                        ConstantStrings.dashBoardRouteName,
                      )
                    : debugPrint("No Route Defined: ");
              },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              10,
            ),
            topLeft: Radius.circular(
              10,
            ),
          ),
        ),
        hoverColor: itemIndex == selectedIndex
            ? Color.alphaBlend(
                Color.fromRGBO(
                  Theme.of(context).colorScheme.surfaceTint.red,
                  Theme.of(context).colorScheme.surfaceTint.green,
                  Theme.of(context).colorScheme.surfaceTint.blue,
                  0.08,
                ),
                Colors.blue[100]!,
              )
            : Colors.blue[100],
        selected: itemIndex == selectedIndex,
        selectedTileColor: CColors.whiteColor,
        tileColor: CColors.primaryColor,
        leading: Icon(
          iconData,
          color: itemIndex == selectedIndex
              ? CColors.primaryColor
              : CColors.whiteColor,
          size: 17,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            menuTitle,
            style: itemIndex == selectedIndex
                ? CCustomTextStyles.sideMenu515
                : CCustomTextStyles.white515,
          ),
        ),
      ),
    );
  }
}
