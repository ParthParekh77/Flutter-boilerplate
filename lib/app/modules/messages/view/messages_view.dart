import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/global_widgets/custom_text.dart';

import '../../../../core/constants/string_constants.dart';

class MessagesView extends GetView {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText.semiBold24(
        StringConstants.messages.tr,
      ),
    );
  }
}
