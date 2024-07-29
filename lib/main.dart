import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/account_verification_bloc/account_verification_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/account_verification_bloc/account_verification_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/create_password_bloc/create_password_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/create_password_bloc/create_password_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/forgot_password_bloc/forgot_password_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/login_bloc/login_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/login_bloc/login_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/registration_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/repair_order_bloc/repair_order_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/repair_order_bloc/repair_order_states.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/verification_bloc/verification_bloc.dart';
import 'package:lezof_auto_repair_mobile_app/bloc/verification_bloc/verification_states.dart';
import 'package:lezof_auto_repair_mobile_app/repository/forgot_password_repository.dart';
import 'package:lezof_auto_repair_mobile_app/repository/login_repository.dart';
import 'package:lezof_auto_repair_mobile_app/repository/reg_verification_repository.dart';
import 'package:lezof_auto_repair_mobile_app/repository/registration_repository.dart';
import 'package:lezof_auto_repair_mobile_app/repository/reset_verification_repository.dart';
import 'package:lezof_auto_repair_mobile_app/repository/update_password_repository.dart';
import 'package:lezof_auto_repair_mobile_app/repository/vehicle_details_repository.dart';
import 'package:lezof_auto_repair_mobile_app/splash_screen/splash_screen.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
                 BlocProvider(
              create: (context) => ChangePassBloc(
                  ChangePassInitialState(), ChangePassRepository())),
                                   BlocProvider(
              create: (context) => AccountVerificationBloc(
                  AccountVerificationInitialState(), AccountVerRepository())),
         BlocProvider(
              create: (context) => LoginBloc(
                  LoginInitialState(), LoginRepository())),
         BlocProvider(
              create: (context) => RegistrationBloc(
                  RegistrationInitialState(), RegRepository())),
                   BlocProvider(
              create: (context) =>
                  ResetBloc(ResetInitialState(), ResRepository())),
                            BlocProvider(
              create: (context) => ResetVerificationBloc(
                  ResetVerificationInitialState(), ResetVerRepository())),
                   BlocProvider(
              create: (context) => WalletDetailsBloc(
                  WalletDetalsInitialState(),TransactionsRepository())),
      ],
      child: MaterialApp(
        title: 'Lezof',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const SplashScreen(),),
    );
  }
}