import 'package:auth_flow/core/funcations/custom_toast.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? emailAddress;
  String? password;
  String? firstName;
  String? lastName;
  bool? termsAndServiceCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signUpFromKey = GlobalKey();
  GlobalKey<FormState> signInFromKey = GlobalKey();
  GlobalKey<FormState> resetPasswordFromKey = GlobalKey();

  //!sign up method
  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoading());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfile();
      await verfiyEmail();
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFauiler(errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(
          SignUpFauiler(
            errorMessage: 'The account already exists for that email.',
          ),
        );
      } else {
        emit(SignUpFauiler(errorMessage: "Something went wrong ${e.code}"));
      }
    } catch (e) {
      emit(SignUpFauiler(errorMessage: e.toString()));
    }
  }
  //!sign in method

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignInLoading());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfile();
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFauiler(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(
          SignInFauiler(errorMessage: 'Wrong password provided for that user.'),
        );
      } else {
        emit(SignInFauiler(errorMessage: "Something went wrong ${e.code}"));
      }
    } catch (e) {
      emit(SignInFauiler(errorMessage: e.toString()));
    }
  }

  //! verfication method
  Future<void> verfiyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  //! update T&S check box
  updateTermsAndServiceCheckBox({required newValue}) {
    termsAndServiceCheckBoxValue = newValue;
    emit(CheckBoxStateUpdate());
  }

  //! obscure password method
  void obscurePasswordText() {
    obscurePasswordTextValue == true
        ? obscurePasswordTextValue = false
        : obscurePasswordTextValue = true;
    emit(ObscureTextUpdateState());
  }

  Future<void> sendPasswordResetEmail() async {
    try {
      emit(PasswordResetEmailLoading());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(PasswordResetEmailSuccess());
    } on FirebaseAuthException catch (e) {
      emit(PasswordResetEmailFauiler(errorMessage: 'Something went wrong: $e'));
    }
  }

  Future<UserCredential> registerWithGoogle() async {
    final user = await FirebaseAuth.instance.signInWithCredential(
      AuthCredential(providerId: "providerId", signInMethod: "signInMethod"),
    );
    return user;
  }

  Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    users.add({
      "first_name": firstName,
      "last_name": lastName,
      "email_address": emailAddress,
    });
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      customToast(meg: e.toString());
    }
  }
}
