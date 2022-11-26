import 'package:cater_me_api/AuthenticationPage/LoginPage/repository/login_repo.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/state_manager/login_bloc.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/screens/login_page.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/repository/signup_repo.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_bloc.dart';
import 'package:cater_me_api/Pages/HomePage/state_manager/blocs/user/user_bloc.dart';
import 'package:cater_me_api/Pages/HomePage/repository/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginAuthBloc>(create: (_) => LoginAuthBloc(LoginAuthRepo())),
        //BlocProvider<SignupAuthBloc>(create: (_) => SignupAuthBloc(SignupAuthRepo())),
        BlocProvider<UserBloc>(create: (_) => UserBloc(UserRepository())),
      ],
      child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cater Me',
      home: LoginPage(),
    ),   
    );
  }
}











    