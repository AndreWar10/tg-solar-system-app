import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositories/auth_repository.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository})
      : super(
          UnAuthenticated(),
        ) {

    on<SignInRequested>(
      (event, emit) async {
        emit(
          Loading(),
        );
        try {
          await authRepository.signIn(
              email: event.email, password: event.password);
          emit(
            Authenticated('Login efetuado com sucesso!'),
          );
        } catch (e) {
          emit(
            AuthError(
              e.toString(),
            ),
          );
          emit(
            UnAuthenticated(),
          );
        }
      },
    );

     on<SignInGoogleRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signInWithGoogle();
        emit(Authenticated('Autenticação Google realizada com sucesso'));
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(UnAuthenticated());
      }
    });


    on<SignUpRequested>(
      (event, emit) async {
        emit(
          Loading(),
        );
        try {
          await authRepository.signUp(
              email: event.email, password: event.password, displayName: event.displayName);
          emit(Authenticated('Conta criada com sucesso!'));
        } catch (e) {
          emit(
            AuthError(
              'Não foi possível criar sua conta',
            ),
          );
          emit(
            UnAuthenticated(),
          );
        }
      },
    );

    on<SignOutRequested>(
      (event, emit) async {
        emit(
          Loading(),
        );
        await authRepository.signOut();
        emit(
          UnAuthenticated(),
        );
      },
    );
  }
}
