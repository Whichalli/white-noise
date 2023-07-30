import 'package:alli_s_application9/core/app_export.dart';
import 'package:alli_s_application9/presentation/pack_detail_composer_container1_screen/models/pack_detail_composer_container1_model.dart';

/// A controller class for the PackDetailComposerContainer1Screen.
///
/// This class manages the state of the PackDetailComposerContainer1Screen, including the
/// current packDetailComposerContainer1ModelObj
class PackDetailComposerContainer1Controller extends GetxController {
  Rx<PackDetailComposerContainer1Model> packDetailComposerContainer1ModelObj =
      PackDetailComposerContainer1Model().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.playerTabContainerScreen,
      );
    });
  }
}
