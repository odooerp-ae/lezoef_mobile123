import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/login_bloc/login_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/login_bloc/login_states.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/login_model.dart';
import 'package:lezof_auto_repair_mobile_app/repository/login_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepo;
  // ignore: use_function_type_syntax_for_parameters, non_constant_identifier_names
  LoginModel user = LoginModel();
  LoginBloc(LoginState initialState, this.loginRepo)
      : super(initialState) {
    on<LoginSubmitted>(login);
  }
  login(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());
        LoginModel user = await LoginRepository().login(
        event.login,
        event.password,
        event.db,);
    // ignore: unnecessary_null_comparison
    if (user != null) {
      log("success");
      if (user.result!.db.toString() == "odooerp-ae-lezof-main-13545026") {
        emit(LoginSubmittedState());
      } else {
        emit(LoginErrorState(message: "Provide all the parameters correctly"));
      }
    } else {
      log("failed");
      emit(LoginErrorState(message: "Provide all the parameters correctly"));
    }
  }
}
