
import 'package:flutter/material.dart';
import 'package:flutter_sample/core/constants/color_constants.dart';
import 'package:flutter_sample/core/constants/string_constants.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(StringConstants.appBarTitle),
      backgroundColor: ColorConstants.mainColor,
      leading: Icon(Icons.account_balance_rounded),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
