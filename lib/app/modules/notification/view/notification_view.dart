import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/global_widgets/custom_text.dart';
import 'package:vedhas/core/constants/string_constants.dart';
import 'package:vedhas/translations/keys.dart';


class NotificationsView extends GetView {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText.semiBold24(
        StringConstants.notifications,
          // translate(Keys.Screens_Notification),
      ),
    );
  }
}
