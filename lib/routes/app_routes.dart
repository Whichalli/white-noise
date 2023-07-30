import 'package:alli_s_application9/presentation/pack_detail_composer_container1_screen/pack_detail_composer_container1_screen.dart';
import 'package:alli_s_application9/presentation/pack_detail_composer_container1_screen/binding/pack_detail_composer_container1_binding.dart';
import 'package:alli_s_application9/presentation/player_tab_container_screen/player_tab_container_screen.dart';
import 'package:alli_s_application9/presentation/player_tab_container_screen/binding/player_tab_container_binding.dart';
import 'package:alli_s_application9/presentation/now_playing_screen/now_playing_screen.dart';
import 'package:alli_s_application9/presentation/now_playing_screen/binding/now_playing_binding.dart';
import 'package:alli_s_application9/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:alli_s_application9/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String packDetailComposerContainerPage =
      '/pack_detail_composer_container_page';

  static const String packDetailComposerContainer1Screen =
      '/pack_detail_composer_container1_screen';

  static const String playerPage = '/player_page';

  static const String playerTabContainerScreen = '/player_tab_container_screen';

  static const String nowPlayingScreen = '/now_playing_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: packDetailComposerContainer1Screen,
      page: () => PackDetailComposerContainer1Screen(),
      bindings: [
        PackDetailComposerContainer1Binding(),
      ],
    ),
    GetPage(
      name: playerTabContainerScreen,
      page: () => PlayerTabContainerScreen(),
      bindings: [
        PlayerTabContainerBinding(),
      ],
    ),
    GetPage(
      name: nowPlayingScreen,
      page: () => NowPlayingScreen(),
      bindings: [
        NowPlayingBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => PackDetailComposerContainer1Screen(),
      bindings: [
        PackDetailComposerContainer1Binding(),
      ],
    )
  ];
}
