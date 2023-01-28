import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var googleSingIn = GoogleSignIn();
  var googleAccountSignIn = Rx<GoogleSignInAccount?>(null);
  login() async {
    googleAccountSignIn.value = await googleSingIn.signIn();
  }
}
