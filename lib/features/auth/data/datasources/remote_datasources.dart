// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stu_teach/features/auth/data/datasources/remote_user_datasources.dart';
import 'package:stu_teach/features/auth/data/model/user_model.dart';

class RemoteDatasources {
  FirebaseAuth firebaseAuth;
  RemoteUserDatasources remoteUserDatasources;
  RemoteDatasources({
    required this.firebaseAuth,
    required this.remoteUserDatasources,
  });

  Future<User?> signUpWithEmailPassword({
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        remoteUserDatasources.addUser(
            UserModel(id: userCredential.user!.uid, role: role, email: email));
        remoteUserDatasources.getUserRoleById(userCredential.user!.uid);
      }

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<User?> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
      final shared = await SharedPreferences.getInstance();
      shared.clear();
    } catch (e) {
      throw Exception('Sign out failed: ${e.toString()}');
    }
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  User? getCurrentUser() {
    return firebaseAuth.currentUser;
  }

  Stream<User?> authStateChanges() {
    return firebaseAuth.authStateChanges();
  }
}
