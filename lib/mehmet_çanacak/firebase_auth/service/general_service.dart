import 'package:firebase_auth/firebase_auth.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/model/firebase_user_model.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/service.dart';

FirebaseUserModel convertUser(UserCredential user) {
  return FirebaseUserModel(userId: user.user?.uid, userEmail: user.user?.email);
}

FirebaseUserModel getUser(User? user) {
  return FirebaseUserModel(userEmail: user?.email, userId: user?.uid);
}

class FirebaseGeneralService implements IFirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<FirebaseUserModel> signUp({required String? email, required String? password}) async {
    var tempAuth =
        await _auth.createUserWithEmailAndPassword(email: email ?? '', password: password ?? '');
    return convertUser(tempAuth);
  }

  @override
  Future<FirebaseUserModel> signIn({required String? email, required String? password}) async {
    var tempAuth =
        await _auth.signInWithEmailAndPassword(email: email ?? '', password: password ?? '');
    return convertUser(tempAuth);
  }

  @override
  Stream<FirebaseUserModel> get onAuthStateChanged => _auth.authStateChanges().map(getUser);

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
