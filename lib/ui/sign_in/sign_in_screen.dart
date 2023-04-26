import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:projectunity/ui/sign_in/widget/sign_in_button.dart';
import '../../data/configs/colors.dart';
import '../../data/configs/text_style.dart';
import '../../data/core/utils/const/image_constant.dart';
import '../../data/di/service_locator.dart';
import '../widget/circular_progress_indicator.dart';
import '../widget/error_snack_bar.dart';
import 'bloc/sign_in_view_bloc.dart';
import 'bloc/sign_in_view_event.dart';
import 'bloc/sign_in_view_state.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignInBloc>(),
      child: const SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInFailureState) {
            showSnackBar(context: context, error: state.error);
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints(
                  minHeight: 300,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                color: AppColors.primaryBlue,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 20),
                        Flexible(
                          child: Image.asset(ImageConst.loginPageVectorImage,
                              width: MediaQuery.of(context).size.width * 0.8),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                AppLocalizations.of(context).sign_in_title_text,
                                textAlign: TextAlign.center,
                                style: AppFontStyle.titleDark.copyWith(
                                    overflow: TextOverflow.fade,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 20, bottom: 40),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .sign_in_description_text,
                                  style: AppFontStyle.bodyMedium.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.whiteColor),
                                  overflow: TextOverflow.fade,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: AppColors.whiteColor,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: BlocBuilder<SignInBloc, SignInState>(
                  buildWhen: (previous, current) =>
                      previous is SignInLoadingState ||
                      current is SignInLoadingState,
                  builder: (context, state) => state is SignInLoadingState
                      ? const AppCircularProgressIndicator()
                      : Center(
                          child: SignInButton(
                              onPressed: () {
                                context
                                    .read<SignInBloc>()
                                    .add(SignInEvent());
                              },
                              title: AppLocalizations.of(context)
                                  .login_button_text,
                              image: ImageConst.googleLogoImage),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}