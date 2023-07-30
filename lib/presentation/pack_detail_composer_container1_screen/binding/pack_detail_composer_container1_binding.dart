import '../controller/pack_detail_composer_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PackDetailComposerContainer1Screen.
///
/// This class ensures that the PackDetailComposerContainer1Controller is created when the
/// PackDetailComposerContainer1Screen is first loaded.
class PackDetailComposerContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PackDetailComposerContainer1Controller());
  }
}
