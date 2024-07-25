import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/global_widgets/custom_text.dart';

import '../../../../core/constants/string_constants.dart';

class NotificationsView extends GetView {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText.semiBold24(
        StringConstants.notifications.tr,
      ),
    );
  }
}
