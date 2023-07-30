import 'controller/now_playing_controller.dart';
import 'package:alli_s_application9/core/app_export.dart';
import 'package:alli_s_application9/presentation/pack_detail_composer_container_page/pack_detail_composer_container_page.dart';
import 'package:alli_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:alli_s_application9/widgets/custom_bottom_bar.dart';
import 'package:alli_s_application9/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class NowPlayingScreen extends GetWidget<NowPlayingController> {
  const NowPlayingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 63,
                leading: CustomIconButton(
                    height: 43,
                    width: 43,
                    margin: getMargin(left: 20, top: 6, bottom: 6),
                    padding: getPadding(all: 10),
                    onTap: () {
                      onTapBtnArrowleft();
                    },
                    child: CustomImageView(
                        svgPath: ImageConstant.imgArrowleftBlueGray90001)),
                centerTitle: true,
                title: Text("lbl_now_playing".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineSmall)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 53, bottom: 53),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(top: 11),
                          child: IntrinsicWidth(
                              child: SizedBox(
                                  height: getVerticalSize(299),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle2,
                                                      height:
                                                          getVerticalSize(202),
                                                      width: getHorizontalSize(
                                                          180),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  30)),
                                                      margin: getMargin(
                                                          top: 29, bottom: 29)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgComponent1,
                                                      height:
                                                          getVerticalSize(260),
                                                      width: getHorizontalSize(
                                                          232),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  30)),
                                                      margin:
                                                          getMargin(left: 24)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle2202x180,
                                                      height:
                                                          getVerticalSize(202),
                                                      width: getHorizontalSize(
                                                          180),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  30)),
                                                      margin: getMargin(
                                                          left: 24,
                                                          top: 29,
                                                          bottom: 29))
                                                ])),
                                        CustomIconButton(
                                            height: 50,
                                            width: 50,
                                            padding: getPadding(all: 14),
                                            decoration: IconButtonStyleHelper
                                                .outlineGray100,
                                            alignment: Alignment.bottomCenter,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFavorite))
                                      ])))),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("lbl_freak_in_me".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .titleLargeMetropolisBluegray90001)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("lbl_mild_orange".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.bodyLargeMetropolisGray600)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup3,
                          height: getVerticalSize(1),
                          width: getHorizontalSize(309),
                          margin: getMargin(top: 58)),
                      Padding(
                          padding: getPadding(left: 33, top: 30, right: 33),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 23, bottom: 24),
                                    child: Text("lbl_0_36".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.48)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSkipprevious,
                                    height: getSize(27),
                                    width: getSize(27),
                                    margin: getMargin(top: 17, bottom: 17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgComponent3,
                                    height: getSize(61),
                                    width: getSize(61)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSkipnext,
                                    height: getSize(27),
                                    width: getSize(27),
                                    margin: getMargin(top: 17, bottom: 17)),
                                Padding(
                                    padding: getPadding(top: 23, bottom: 24),
                                    child: Text("lbl_3_40".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeGray400
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.48))))
                              ]))
                    ])),
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

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleft() {
    Get.back();
  }
}
