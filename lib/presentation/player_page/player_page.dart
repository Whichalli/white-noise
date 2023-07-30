import 'controller/player_controller.dart';
import 'models/player_model.dart';
import 'package:alli_s_application9/core/app_export.dart';
import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  PlayerPage({Key? key})
      : super(
          key: key,
        );

  PlayerController controller = Get.put(PlayerController(PlayerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 32,
                    top: 32,
                    right: 23,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: getMargin(
                          right: 3,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 12,
                          right: 20,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.fill3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 12,
                                bottom: 17,
                              ),
                              child: Text(
                                "lbl_1".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge!.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    1.2,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                199,
                              ),
                              margin: getMargin(
                                left: 38,
                                bottom: 3,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle30,
                                    height: getVerticalSize(
                                      52,
                                    ),
                                    width: getHorizontalSize(
                                      53,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 37,
                                      bottom: 6,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_swim".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              1.02,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 6,
                                          ),
                                          child: Text(
                                            "lbl_chase_atlantic".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallCenturyGothicGray500
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.77,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 3,
                          top: 16,
                        ),
                        padding: getPadding(
                          left: 20,
                          top: 12,
                          right: 20,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.fill3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 12,
                                bottom: 17,
                              ),
                              child: Text(
                                "lbl_2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge!.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    1.2,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                131,
                              ),
                              margin: getMargin(
                                left: 35,
                                bottom: 3,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle3052x53,
                                    height: getVerticalSize(
                                      52,
                                    ),
                                    width: getHorizontalSize(
                                      53,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 37,
                                      bottom: 6,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_time".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              1.02,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 6,
                                          ),
                                          child: Text(
                                            "lbl_nf".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallCenturyGothicGray500
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.77,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
