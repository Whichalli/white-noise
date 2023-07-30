import 'package:alli_s_application9/core/app_export.dart';
import 'package:alli_s_application9/presentation/now_playing_screen/models/now_playing_model.dart';

/// A controller class for the NowPlayingScreen.
///
/// This class manages the state of the NowPlayingScreen, including the
/// current nowPlayingModelObj
class NowPlayingController extends GetxController {
  Rx<NowPlayingModel> nowPlayingModelObj = NowPlayingModel().obs;
}
