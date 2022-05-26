import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectunity/Navigation%20/login_state.dart';
import 'package:projectunity/Widget/circular_progress_indicator.dart';
import 'package:projectunity/di/service_locator.dart';

import '../../ViewModel/login_bloc.dart';
import '../../Widget/error_banner.dart';
import '../../rest/api_response.dart';
import '../../utils/Constant/image_constant.dart';
import 'Contents/sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _bloc = getIt<LoginBloc>();
  final _loginState = getIt<LoginState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(loginPageBackgroundImage), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          buildTitle(),
                          buildSubTitle(),
                        ],
                      ),
                    ),
                    buildImage(context),
                    Column(children: [
                      const Center(
                        child: Text(
                          'To continue with Unity please',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      StreamBuilder<ApiResponse<bool>>(
                          stream: _bloc.loginResponse,
                          initialData: const ApiResponse.idle(),
                          builder: (context, snapshot) {
                            return snapshot.data!.when(idle: () {
                              return SignInButton(
                                  onPressed: _bloc.signInWithGoogle);
                            }, loading: () {
                              return kCircularProgressIndicator;
                            }, completed: (bool hasAccount) {
                              if (hasAccount) {
                                SchedulerBinding.instance
                                    .addPostFrameCallback((_) {
                                  _loginState.setUserLogin(hasAccount);
                                });
                              }
                              return Container();
                            }, error: (String error) {
                              SchedulerBinding.instance
                                  .addPostFrameCallback((_) {
                                showErrorBanner(error, context);
                              });

                              return Container();
                            });
                          }),
                    ]),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Container buildImage(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              loginPageVectorImage,
            ),
          ),
        ));
  }

  Text buildSubTitle() {
    return Text(
      'to Unity!',
      style: GoogleFonts.ibmPlexSans(
          fontSize: 50, letterSpacing: 1, color: Colors.black87, height: 1),
    );
  }

  Text buildTitle() {
    return Text(
      'Welcome',
      style: GoogleFonts.ibmPlexSans(
          height: 2,
          fontSize: 50,
          color: Colors.black87,
          fontStyle: FontStyle.italic),
    );
  }
}
