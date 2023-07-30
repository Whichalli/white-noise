import '../controller/pack_detail_composer_container_controller.dart';
import '../models/row_item_model.dart';
import 'package:alli_s_application9/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RowItemWidget extends StatelessWidget {
  RowItemWidget(
    this.rowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RowItemModel rowItemModelObj;

  var controller = Get.find<PackDetailComposerContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fill2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: getHorizontalSize(
        100,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: getSize(
              28,
            ),
            width: getSize(
              28,
            ),
            margin: getMargin(
              top: 36,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: getSize(
                      1,
                    ),
                    width: getSize(
                      1,
                    ),
                    margin: getMargin(
                      left: 13,
                      top: 13,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90002,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          1,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgIcons8rainwatercatchment,
                  height: getSize(
                    28,
                  ),
                  width: getSize(
                    28,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              100,
            ),
            margin: getMargin(
              top: 29,
            ),
            padding: getPadding(
              left: 30,
              top: 9,
              right: 30,
              bottom: 9,
            ),
            decoration: AppDecoration.txtFill,
            child: Obx(
              () => Text(
                rowItemModelObj.titleTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
