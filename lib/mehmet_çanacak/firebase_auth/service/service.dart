import 'package:widget_function/mehmet_%C3%A7anacak/firebase_auth/service/model/firebase_user_model.dart';

abstract class IFirebaseService {
  Future<FirebaseUserModel> signIn({required String? email, required String? password});
  Future<FirebaseUserModel> signUp({required String? email, required String? password});
  Stream<FirebaseUserModel> get onAuthStateChanged => throw UnimplementedError();
  Future<void> signOut();
}
