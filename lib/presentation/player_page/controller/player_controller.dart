import 'package:alli_s_application9/core/app_export.dart';
import 'package:alli_s_application9/presentation/player_page/models/player_model.dart';

/// A controller class for the PlayerPage.
///
/// This class manages the state of the PlayerPage, including the
/// current playerModelObj
class PlayerController extends GetxController {
  PlayerController(this.playerModelObj);

  Rx<PlayerModel> playerModelObj;
}
