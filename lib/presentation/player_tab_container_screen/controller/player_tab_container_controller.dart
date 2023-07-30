import 'package:alli_s_application9/core/app_export.dart';
import 'package:alli_s_application9/presentation/player_tab_container_screen/models/player_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PlayerTabContainerScreen.
///
/// This class manages the state of the PlayerTabContainerScreen, including the
/// current playerTabContainerModelObj
class PlayerTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<PlayerTabContainerModel> playerTabContainerModelObj =
      PlayerTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
