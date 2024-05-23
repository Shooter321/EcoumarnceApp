import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/device/device_utility..dart';

import '../../../utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.action,
      this.leadingOnPressed
      });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: TSize.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
        ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left),
            color: dark ?TColors.white:TColors.dark)
        : leadingIcon !=null?
        IconButton(onPressed: leadingOnPressed, icon:  Icon(leadingIcon))
            :null,

        title: title,
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
