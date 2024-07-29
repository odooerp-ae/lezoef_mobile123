// ignore_for_file: unnecessary_null_comparison, duplicate_ignore
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/repair_order_bloc/repair_order_events.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/repair_order_bloc/repair_order_states.dart';
import 'package:lezof_auto_repair_mobile_app/models/list_of_repair_orders_model.dart';
import 'package:lezof_auto_repair_mobile_app/repository/vehicle_details_repository.dart';
ListOfRepairOrders transactionDetailModel = ListOfRepairOrders();
class WalletDetailsBloc extends Bloc<WalletDetailsEvent, WalletDetailsState> {
   TransactionsRepository  transrepo;
  
  WalletDetailsBloc(WalletDetalsInitialState initialState,this.transrepo )
      : super(initialState) {
    on<GetTransactionDetailsEvent>(getGetTransactionDetails);
  }
  getGetTransactionDetails(GetTransactionDetailsEvent event,
      Emitter<WalletDetailsState> emit) async {
    emit(WalletDetalsLoadingState());
       transactionDetailModel =
        await TransactionsRepository().getTranactionsData("87654323456");
    if (transactionDetailModel != null &&
        transactionDetailModel.result!.data != null) {
      log("success");

      emit(TransactionDetalsSuccessState(
        transactionDetailModel: transactionDetailModel,
      ));
    } else {
      log("failed");
      emit(WalletDetalsErrorState(message: "Something went wrong"));
    }
  }
}
