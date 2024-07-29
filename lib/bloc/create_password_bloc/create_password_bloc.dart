import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/create_password_bloc/create_password_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/create_password_bloc/create_password_states.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/create_password_model.dart';
import 'package:lezof_auto_repair_mobile_app/repository/update_password_repository.dart';

class ChangePassBloc extends Bloc<ChangePassEvent, ChangePassState> {
  ChangePassRepository changepasswRepo;
  // ignore: use_function_type_syntax_for_parameters, non_constant_identifier_names
 ChangePassBloc(ChangePassState initialState, this.changepasswRepo)
      : super(initialState) {
    on<ChangePassSubmitted>(resetPassword);
  }
  resetPassword(
      ChangePassSubmitted event, Emitter<ChangePassState> emit) async {
    emit(ChangePassLoadingState());
    UpdatePassword data = await ChangePassRepository()
        .changePassword(event.email, event.password, event.confirmpassword);
    // ignore: unnecessary_null_comparison
    if (data != null ) {
      log("success");
      emit(ChangePassSubmittedState());
    } else {
      log("failed");
      emit(ChangePassErrorState(message: "password not matched"));
    }
  }
}