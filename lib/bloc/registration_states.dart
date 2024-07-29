import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_events.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/regitration_model.dart';
import 'package:lezof_auto_repair_mobile_app/repository/registration_repository.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegRepository regRepo;
  // ignore: use_function_type_syntax_for_parameters, non_constant_identifier_names
  RegistrationBloc(RegistrationState initialState, this.regRepo)
      : super(initialState) {
    on<RegistrationSubmitted>(register);
  }
  register(RegistrationSubmitted event, Emitter<RegistrationState> emit) async {
    emit(RegistrationLoadingState());
    CreateUser user = await RegRepository().register(
        event.firstname,
        event.lastname,
        event.login,
        event.password,
        event.confirmpassword,
        event.companyId);
    // ignore: unnecessary_null_comparison
    if (user != null) {
      log("success");
      if (user.result!.status.toString() == "success") {
        emit(RegistrationSubmittedState());
      } else {
        emit(RegistrationErrorState(message: user.result!.message.toString()));
      }
    } else {
      log("failed");
      emit(RegistrationErrorState(message: user.result!.message.toString()));
    }
  }
    resendregistration(RegistrationSubmitted event, Emitter<RegistrationState> emit) async {
    emit(RegistrationLoadingState());
    CreateUser user = await RegRepository().register(
        event.firstname,
        event.lastname,
        event.login,
        event.password,
        event.confirmpassword,
        event.companyId);
    // ignore: unnecessary_null_comparison
    if (user != null) {
      log("success");
      if (user.result!.status.toString() == "success") {
        emit(RegistrationSubmittedState());
      } else {
        emit(RegistrationErrorState(message: user.result!.message.toString()));
      }
    } else {
      log("failed");
      emit(RegistrationErrorState(message: user.result!.message.toString()));
    }
  }
}
