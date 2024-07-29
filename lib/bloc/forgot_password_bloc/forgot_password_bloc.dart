import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_states.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/forgot_password_model.dart';
import 'package:lezof_auto_repair_mobile_app/repository/forgot_password_repository.dart';
class ResetBloc extends Bloc<ResetEvent, ResetState> {
  ResRepository resRepo;
  // ignore: use_function_type_syntax_for_parameters, non_constant_identifier_names
  ResetBloc(ResetState initialState, this.resRepo) : super(initialState) {
    on<ResetSubmitted>(reset);
    on<ResendcodeSubmitted>(resend);
  }
  reset(ResetSubmitted event, Emitter<ResetState> emit) async {
    emit(ResetLoadingState());
    ForgotPasswordModel data = await ResRepository().reset(event.email);
    // ignore: unnecessary_null_comparison
    if (data != null ) {
      log("success");

      if (data.result!.status == "success") {
        emit(ResetSubmittedState());
      } else {
        emit(ResetErrorState(message: data.result!.message.toString()));
      }
    } else {
      log("failed");
      emit(ResetErrorState(message: data.result!.message.toString()));
    }
  }

  resend(ResendcodeSubmitted event, Emitter<ResetState> emit) async {
    emit(ResetLoadingState());
    ForgotPasswordModel data = await ResRepository().resetresend(event.email);
    // ignore: unnecessary_null_comparison
    if (data != null) {
      log("success");

      if (data.result!.status == "Success") {
        emit(ReseResendcodesuccessState());
      } else {
        emit(ResetErrorState(message: data.result!.message.toString()));
      }
    } else {
      log("failed");
      emit(ResetErrorState(message: data.result!.message.toString()));
    }
  }
}