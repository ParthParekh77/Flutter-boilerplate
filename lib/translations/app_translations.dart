import 'package:get/get.dart';

import '../core/constants/string_constants.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          StringConstants.appName: 'My Flutter App',
          StringConstants.welcome: 'Welcome',
          StringConstants.login: 'Login',
          StringConstants.home: 'Home',
          StringConstants.profile: 'Profile',
          StringConstants.logout: 'Logout',
          StringConstants.dashboard: 'Dashboard',
          StringConstants.messages: 'Messages',
          StringConstants.notifications: 'Notifications',
          StringConstants.settings: 'Settings',
        },
        'hi_IN': {
          StringConstants.appName: 'मेरा फ्लटर ऐप',
          StringConstants.welcome: 'स्वागत है',
          StringConstants.login: 'लॉग इन करें',
          StringConstants.home: 'होम',
          StringConstants.profile: 'प्रोफ़ाइल',
          StringConstants.logout: 'लॉग आउट',
          StringConstants.dashboard: 'डैशबोर्ड',
          StringConstants.messages: 'संदेश',
          StringConstants.notifications: 'सूचनाएं',
          StringConstants.settings: 'सेटिंग्स',
        },
      };
}
