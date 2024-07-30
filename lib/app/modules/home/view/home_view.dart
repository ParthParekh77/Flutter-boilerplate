import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vedhas/gen/assets.gen.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/utils/asset_utils.dart';
import '../../../global_widgets/custom_appbar.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../messages/view/messages_view.dart';
import '../../notification/view/notification_view.dart';
import '../../setting/view/setting_view.dart';
import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: StringConstants.home.tr,
      ),
      body: Obx(() => IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              DashboardView(),
              MessagesView(),
              NotificationsView(),
              SettingsView(),
            ],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changePage,
            selectedItemColor: Colors.blue, // Selected item color
            unselectedItemColor: Colors.grey, // Unselected item color
            backgroundColor: Colors.orange, // Background color
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.images.svg.dashboard),
                label: StringConstants.dashboard.tr,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetUtils.messagesIcon),
                label: StringConstants.messages.tr,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.images.svg.notification),
                label: StringConstants.notifications.tr,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetUtils.settingsIcon),
                label: StringConstants.settings.tr,
              ),
            ],
          )),
    );
  }
}
