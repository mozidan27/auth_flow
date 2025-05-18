class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpSuccess extends AuthState {}

final class SignUpLoading extends AuthState {}

final class SignUpFauiler extends AuthState {
  final String errorMessage;

  SignUpFauiler({required this.errorMessage});
}

final class CheckBoxStateUpdate extends AuthState {}

final class ObscureTextUpdateState extends AuthState {}
