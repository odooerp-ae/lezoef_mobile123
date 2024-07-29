import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/verification_bloc/verification_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/verification_bloc/verification_states.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/reset_verifiction_model.dart';
import 'package:lezof_auto_repair_mobile_app/repository/reset_verification_repository.dart';

class ResetVerificationBloc
    extends Bloc<ResetVerificationEvent, ResetVerificationState> {
  ResetVerRepository verRepo;
  // ignore: use_function_type_syntax_for_parameters, non_constant_identifier_names
  ResetVerificationBloc(ResetVerificationState initialState, this.verRepo)
      : super(initialState) {
    on<ResetVerificationSubmitted>(resetverification);
  }
  resetverification(ResetVerificationSubmitted event,
      Emitter<ResetVerificationState> emit) async {
    emit(ResetVerificationLoadingState());
    ResetVerificationModel data = await ResetVerRepository()
        .resetverification(event.email,event.otp,);
    // ignore: unnecessary_null_comparison
    if (data != null) {
      log("success");
      if (data.result!.status == "success") {
        emit(ResetVerificationSubmittedState());
      } else {
        emit(ResetVerificationErrorState(message: data.result.toString()));
      }
    } else {
      log("failed");
      emit(ResetVerificationErrorState(message: data.result.toString()));
    }
  }
}