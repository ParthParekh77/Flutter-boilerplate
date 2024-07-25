import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/modules/profile/binding/profile_binding.dart';
import 'package:vedhas/app/modules/profile/view/profile_view.dart';

import '../../core/theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.semiBold14),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Get.to(
            () => const ProfileView(),
            binding: ProfileBinding(),
            transition: Transition.leftToRight,
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
