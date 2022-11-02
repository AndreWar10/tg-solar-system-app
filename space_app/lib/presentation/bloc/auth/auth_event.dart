
part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInRequested extends AuthEvent {
  final String email;
  final String password;


  SignInRequested(this.email, this.password,);
}

class SignUpRequested extends AuthEvent {
  final String email;
  final String password;
  final String displayName;

  SignUpRequested(this.email, this.password, this.displayName);
}

class SignInGoogleRequested extends AuthEvent{}

class ForgetPasswordRequest extends AuthEvent{
  final String email;

  ForgetPasswordRequest(this.email);
}


class SignOutRequested extends AuthEvent {}
