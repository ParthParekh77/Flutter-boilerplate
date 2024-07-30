import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:get/get.dart';
import 'package:vedhas/gen/assets.gen.dart';
import 'package:vedhas/translations/keys.dart';

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
        title: translate(Keys.Generalkeywords_Categories),
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
                label: translate(Keys.Screens_Dashboard),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetUtils.messagesIcon),
                label: translate(Keys.Screens_Messages),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(Assets.images.svg.notification),
                label: translate(Keys.Screens_Notification),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetUtils.settingsIcon),
                label: translate(Keys.Screens_Settings),
              ),
            ],
          )),
    );
  }
}
