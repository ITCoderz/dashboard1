import 'package:flutter/material.dart';

import '../../models/side_menu_model.dart';

class ConstantLists {
  ConstantLists._();

  ///
  static List<String> livePortalDropDownList = [
    "Open",
    "Closed",
    "Broadcast",
  ];

  ///
  static List<SideMenuModel> menuList = [
    SideMenuModel(
      menuTitle: "Dashboard",
      iconData: Icons.grid_view_outlined,
    ),
  ];
}
