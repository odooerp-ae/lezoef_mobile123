// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:lezof_auto_repair_mobile_app/bloc/registration_bloc/regitration_bloc.dart';
// import 'package:lezof_auto_repair_mobile_app/bloc/registration_states.dart';
// import 'package:lezof_auto_repair_mobile_app/repository/registration_repository.dart';

// class BlocProviderWidget extends StatelessWidget {
//   final Widget child;
//   const BlocProviderWidget({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//         providers: [
//           BlocProvider(
//               create: (context) => RegistrationBloc(
//                   RegistrationInitialState(), RegRepository())),
//         ],
//         child: child,
//     );
//   }
// }