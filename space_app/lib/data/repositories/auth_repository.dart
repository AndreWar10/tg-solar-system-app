import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
 // final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signUp({required String email, required String password, required String displayName}) async {
     try {
     await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password, ).then((UserCredential userCredential) {
            userCredential.user!.updateDisplayName(displayName);
          });

       
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('A senha é muito fraca');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('Esta conta já existe para este usuário.');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
          
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('Nenhum usuário encontrado para este email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Senha errada para este usuário.');
      }
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
       //await _googleSignIn.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }

  ///
  ////
  ///
  ///
  ///
  ///
// Future<User> signInWithGoogle() async {
//   final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
//   final GoogleSignInAuthentication googleAuth =
//       await googleUser.authentication;
//   final AuthCredential credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth.accessToken,
//     idToken: googleAuth.idToken,
//   );
//   await _firebaseAuth.signInWithCredential(credential);
//   return _firebaseAuth.currentUser!;
// }



// Future<bool> isSignedIn() async {
//   final currentUser = _firebaseAuth.currentUser;
//   return currentUser != null;
// }

// Future<String?> getUser() async {
//   return (_firebaseAuth.currentUser!).email;
// }



}
