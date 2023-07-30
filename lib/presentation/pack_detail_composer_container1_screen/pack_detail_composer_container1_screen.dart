import 'controller/pack_detail_composer_container1_controller.dart';
import 'package:alli_s_application9/core/app_export.dart';
import 'package:alli_s_application9/presentation/pack_detail_composer_container_page/pack_detail_composer_container_page.dart';
import 'package:alli_s_application9/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class PackDetailComposerContainer1Screen
    extends GetWidget<PackDetailComposerContainer1Controller> {
  const PackDetailComposerContainer1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.pinkA100,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.packDetailComposerContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Play:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.packDetailComposerContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.packDetailComposerContainerPage:
        return PackDetailComposerContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
