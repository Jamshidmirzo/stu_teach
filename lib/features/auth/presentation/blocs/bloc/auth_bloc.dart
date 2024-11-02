// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:stu_teach/core/constants/app_constants.dart';
import 'package:stu_teach/core/error/failure.dart';
import 'package:stu_teach/features/auth/domain/entity/auth_entity.dart';
import 'package:stu_teach/features/auth/domain/usecases/check_status_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/log_out_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/reset_pass_usecase.dart';
import 'package:stu_teach/features/auth/domain/usecases/sign_in_usecases.dart';
import 'package:stu_teach/features/auth/domain/usecases/sign_up_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  CheckStatusUsecase checkStatusUsecase;
  GetUserUsecase getUserUsecase;
  LogOutUsecase logOutUsecase;
  ResetPassUsecase resetPassUsecase;
  SignInUsecases signInUsecases;
  SignUpUsecase signUpUsecase;
  AuthBloc(
    this.checkStatusUsecase,
    this.getUserUsecase,
    this.logOutUsecase,
    this.resetPassUsecase,
    this.signInUsecases,
    this.signUpUsecase,
  ) : super(AuthState()) {
    on<_LogIn>(_logIn);
    on<_SignUp>(_signUp);
    on<_LogOut>(_logOut);
    on<_ResetPass>(_reset);
    on<_getUser>(_getUsers);
    on<_checkUser>(_checkUsers);
  }
 Future<void> _checkUsers(_checkUser event, Emitter<AuthState> emit) async {
  final response = checkStatusUsecase(null);

  await for (final result in response) {
    result.fold(
      (error) {
        emit(
          state.copyWith(
            status: Status.Error,
            message: _failureMessage(error),
          ),
        );
      },
      (user) {
        
        if (user != null) {
          emit(state.copyWith(
            status: Status.Success, 
          ));
        } else {
          emit(state.copyWith(
            status: Status.Unauthenticated,
            message: 'User is not authenticated',
          ));
        }
      },
    );
  }
}


  Future<void> _logIn(_LogIn event, Emitter<AuthState> emit) async {
    final recponce = await signInUsecases(SignInParams(
        email: event.entity.email, password: event.entity.password));
    recponce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, user: data));
    });
  }

  Future<void> _signUp(_SignUp event, Emitter<AuthState> emit) async {
    final recponce = await signUpUsecase(
      SignUpParams(
          email: event.entity.email,
          password: event.entity.password,
          role: event.role),
    );
    recponce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, user: data));
    });
  }

  Future<void> _logOut(_LogOut event, Emitter<AuthState> emit) async {
    final recponce = await logOutUsecase(null);
    recponce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success));
    });
  }

  Future<void> _reset(_ResetPass event, Emitter<AuthState> emit) async {
    final recponce = await resetPassUsecase(ResetParams(email: event.email));
    recponce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success));
    });
  }

  Future<void> _getUsers(_getUser event, Emitter<AuthState> emit) async {
    final recponce = await getUserUsecase(null);
    recponce.fold((error) {
      emit(
        state.copyWith(
          status: Status.Error,
          message: _failureMessage(error),
        ),
      );
    }, (data) {
      emit(state.copyWith(status: Status.Success, user: data));
    });
  }

  String _failureMessage(Failure failure) {
    switch (failure) {
      case ServerFailure():
        return 'Server Exception';
      case CacheFailure():
        return "Cache Error";
      default:
        return 'Something get wrong';
    }
  }
}
