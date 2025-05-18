import 'package:auth_flow/features/auth/presentation/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? emailAddress;
  String? password;
  String? firstName;
  String? lastName;
  bool? termsAndServiceCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signUpFromKey = GlobalKey();
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoading());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
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
      }
    } catch (e) {
      emit(SignUpFauiler(errorMessage: e.toString()));
    }
  }

  updateTermsAndServiceCheckBox({required newValue}) {
    termsAndServiceCheckBoxValue = newValue;
    emit(CheckBoxStateUpdate());
  }

  void obscurePasswordText() {
    obscurePasswordTextValue == true
        ? obscurePasswordTextValue = false
        : obscurePasswordTextValue = true;
    emit(ObscureTextUpdateState());
  }
}
