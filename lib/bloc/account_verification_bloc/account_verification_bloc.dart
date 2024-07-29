import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/account_verification_bloc/account_verification_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/account_verification_bloc/account_verification_states.dart';
import 'package:lezof_auto_repair_mobile_app/models/regitration_model/account_verification_model.dart';
import 'package:lezof_auto_repair_mobile_app/repository/reg_verification_repository.dart';
class AccountVerificationBloc
    extends Bloc<AccountVerificationEvent, AccountVerificationState> {
  AccountVerRepository accountverRepo;
  // ignore: use_function_type_syntax_for_parameters, non_constant_identifier_names
  AccountVerificationBloc(AccountVerificationState initialState, this.accountverRepo)
      : super(initialState) {
    on<AccountVerificationSubmitted>(accountverification);
  }
  accountverification(AccountVerificationSubmitted event,
      Emitter<AccountVerificationState> emit) async {
    emit(AccountVerificationLoadingState());
    AccountVerificationModel data = await AccountVerRepository().accountverification(event.email, event.otp);
    // ignore: unnecessary_null_comparison
    if (data != null) {
      log("success");
      if (data.result!.status == "success") {
        emit(AccountVerificationSubmittedState());
      } else {
        emit(AccountVerificationErrorState(message: data.result.toString()));
      }
    } else {
      log("failed");
      emit(AccountVerificationErrorState(message: data.result.toString()));
    }
  }
}