// ignore_for_file: library_private_types_in_public_api

import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/screens/login_page.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_elevatedbutton.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_textbutton.dart';
import 'package:cater_me_api/AuthenticationPage/LoginPage/ui/widgets/widget_textfield.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_bloc.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_event.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/state_manager/signup_state.dart';
import 'package:cater_me_api/AuthenticationPage/SignupPage/ui/widgets/widget_expansion_tile.dart';
import 'package:cater_me_api/Pages/HomePage/ui/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController confirmedPassword = TextEditingController();
  TextEditingController phone = TextEditingController();

  final TextEditingController email = TextEditingController(text: "eve.holt@reqres.in");
  final TextEditingController password = TextEditingController(text: "pistol");

  SignupAuthBloc? _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = BlocProvider.of<SignupAuthBloc>(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: Column(
              children: [
                widgetTextField(context, null, 'Name', 0, name),const SizedBox(height: 10,),
                widgetTextField(context, Icons.email_outlined, 'Email', 15, email),
                const SizedBox(height: 10,),
                widgetTextField(context, Icons.lock_outline, 'Password', 15, password),
                const SizedBox( height: 10,),
                widgetTextField(context, Icons.lock_outline, 'Confirm Password', 15, confirmedPassword),
                const SizedBox(height: 10,),
                widgetTextField(context, Icons.phone_outlined, 'Phone Number', 15, phone),
                const SizedBox(height: 10,),
                widgetExpansionTile(context, 'Gender', 'Male', 'Femal'),
                const SizedBox(height: 10,),
                widgetExpansionTile(context, 'BirthdayDate', 'Male', 'Femal'),
                const SizedBox(height: 20,),
                Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: BlocListener<SignupAuthBloc, SignupAuthState>(
                  listener: (context, state) {
                    if (state is SignupAuthLoading) {
                      const CircularProgressIndicator(
                          color: Color.fromARGB(255, 255, 43, 43));
                    } else if (state is SignupAuthSuccessful) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                      // ScaffoldMessenger.of(context).showSnackBar(
                      // const SnackBar(content: Text('Welcome')));
                    } else if (state is SignupAuthError) {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      // const SnackBar(content: Text('Error')));
                    }
                  },
                  child: widgetElevatedButton(context, () {
                    _authBloc!.add(
                        SignupEvent(email: email.text, password: password.text));
                  }, 'Log In', const Color(0xff3E5521),
                      BorderRadius.circular(18)),
                ),
              ),
                //Padding(padding: const EdgeInsets.only(left: 25, right: 25),child: widgetElevatedButton(context, () {Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage(),));}, 'Sign Up',const Color(0xff3E5521), BorderRadius.circular(18)),),
                widgetTextButton(context, Alignment.center, '', 'Login', 'Already Have An Account? ', (){Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage(),));}, 15, const Color.fromARGB(255, 243, 239, 239)),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
