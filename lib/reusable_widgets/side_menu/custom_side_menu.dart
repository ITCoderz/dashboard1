import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap_cure_dashboard/generated/assets.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/constants/constant_lists.dart';
import '../../utils/constants/constant_strings.dart';
import '../../utils/sizes/platform_sizes.dart';
import '../../utils/text_styles/text_styles.dart';

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
      width: maxWidth > PlatformSizes.minLargeScreenWidth.round() ? 300 : 80,
      height: context.height * 1,
      decoration: const BoxDecoration(
        color: CColors.menuBarColor,
      ),
      child: SingleChildScrollView(
        child: maxWidth > PlatformSizes.maxMediumScreenWidth.round()
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  40.ph,
                  const FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Gap Cure",
                      style: CustomTextStyles.white738,
                    ),
                  ),
                  100.ph,
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
                ],
              )
            : IntrinsicHeight(
                child: NavigationRail(
                  backgroundColor: CColors.menuBarColor,
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
                  unselectedLabelTextStyle: CustomTextStyles.white522,
                  selectedLabelTextStyle: CustomTextStyles.white522,
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
                      const FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Gap Cure",
                          style: CustomTextStyles.white738,
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
                            child: Text(
                          ConstantLists.menuList[index].menuTitle,
                        )),
                      ),
                    ]
                  ],
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
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: CColors.sideMenuTileGradientColor,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Material(
        color: Colors.transparent,
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
          selectedTileColor: Colors.transparent,
          tileColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(
            Assets.sideMenuImagesArrowIcon,
            height: 35,
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              menuTitle,
              style: CustomTextStyles.white522,
            ),
          ),
        ),
      ),
    );
  }
}
