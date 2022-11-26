// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/AuthenticationPage/LoginPage/state_manager/login_bloc.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/state_manager/login_event.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/state_manager/login_state.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_elevatedbutton.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_logo.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_textbutton.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_textfield.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/ui/screens/signup_page.dart';
import 'package:cater_me_api/Pages/HomePage/ui/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController(text: "eve.holt@reqres.in");
  final TextEditingController password = TextEditingController(text: "cityslicka");

  LoginAuthBloc? _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = BlocProvider.of<LoginAuthBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Column(children: [
              widgetLogo(context),
              widgetTextField(
                  context, Icons.email_outlined, 'Email', 20, email),
              const SizedBox(
                height: 10,
              ),
              widgetTextField(
                  context, Icons.lock_outlined, 'Password', 20, password),
              widgetTextButton(context, Alignment.topRight, 'Forgot Password?',
                  '', '', () {}, 13, const Color.fromARGB(255, 243, 239, 239)),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: BlocListener<LoginAuthBloc, LoginAuthState>(
                  listener: (context, state) {
                    if (state is LoginAuthLoading) {
                      const CircularProgressIndicator(
                          color: Color.fromARGB(255, 255, 43, 43));
                    } else if (state is LoginAuthSuccessful) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                      // ScaffoldMessenger.of(context).showSnackBar(
                      // const SnackBar(content: Text('Welcome')));
                    } else if (state is LoginAuthError) {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      // const SnackBar(content: Text('Error')));
                    }
                  },
                  child: widgetElevatedButton(context, () {
                    _authBloc!.add(
                        LoginEvent(email: email.text, password: password.text));
                  }, 'Log In', const Color(0xff3E5521),
                      BorderRadius.circular(18)),
                ),
              ),
              widgetTextButton(
                  context, Alignment.center, 'Create New Account', '', '', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ));
              }, 17, const Color.fromARGB(255, 243, 239, 239)),
              const SizedBox(
                height: 50,
              )
            ]),
          ),
        ),
      ),
      // ),
    );
  }
}
