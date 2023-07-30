import 'controller/player_tab_container_controller.dart';
import 'package:alli_s_application9/core/app_export.dart';
import 'package:alli_s_application9/presentation/player_page/player_page.dart';
import 'package:alli_s_application9/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PlayerTabContainerScreen extends GetWidget<PlayerTabContainerController> {
  const PlayerTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: SizedBox(
                width: getHorizontalSize(428),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 20, top: 39, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 8, bottom: 20),
                                    onTap: () {
                                      onTapImgArrowleft();
                                    }),
                                CustomElevatedButton(
                                    width: getHorizontalSize(148),
                                    height: getVerticalSize(52),
                                    text: "lbl_categories".tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillBluegray90002,
                                    buttonTextStyle:
                                        theme.textTheme.titleSmall!,
                                    onTap: () {
                                      onTapCategories();
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(392),
                          margin: getMargin(top: 37),
                          child: TabBar(
                              controller: controller.tabviewController,
                              labelColor: appTheme.amber600,
                              labelStyle: TextStyle(),
                              unselectedLabelColor: appTheme.gray900,
                              unselectedLabelStyle: TextStyle(),
                              indicatorColor: appTheme.amber600,
                              tabs: [
                                Tab(
                                    child: Text("lbl_lullaby".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: SizedBox(
                                        width: getHorizontalSize(54),
                                        child: Text("lbl_audio_stories2".tr,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis)))
                              ])),
                      SizedBox(
                          height: getVerticalSize(638),
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [PlayerPage(), PlayerPage()]))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() {
    Get.back();
  }

  /// Navigates to the packDetailComposerContainer1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the packDetailComposerContainer1Screen.
  onTapCategories() {
    Get.toNamed(
      AppRoutes.packDetailComposerContainer1Screen,
    );
  }
}
