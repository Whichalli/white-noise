import '../controller/player_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlayerTabContainerScreen.
///
/// This class ensures that the PlayerTabContainerController is created when the
/// PlayerTabContainerScreen is first loaded.
class PlayerTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlayerTabContainerController());
  }
}
