import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:projectunity/bloc/authentication/logout_event.dart';
import 'package:projectunity/configs/colors.dart';
import 'package:projectunity/configs/text_style.dart';
import 'package:projectunity/core/utils/const/space_constant.dart';
import 'package:projectunity/ui/admin/setting/widget/setting_option.dart';

import '../../../bloc/authentication/logout_bloc.dart';
import '../../../bloc/authentication/logout_state.dart';
import '../../../di/service_locator.dart';
import '../../../router/app_router.dart';
import '../../../widget/error_snack_bar.dart';
import '../../../widget/setting_screen_subtitle.dart';
import '../../../widget/user_intro_content.dart';

class AdminSettingPage extends StatelessWidget {
  const AdminSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LogOutBloc>(),
      child: const AdminSettingScreen(),
    );
  }
}

class AdminSettingScreen extends StatefulWidget {
  const AdminSettingScreen({Key? key}) : super(key: key);

  @override
  State<AdminSettingScreen> createState() => _AdminSettingScreenState();
}

class _AdminSettingScreenState extends State<AdminSettingScreen> {

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          foregroundColor: AppColors.blackColor,
        ),
        backgroundColor: AppColors.whiteColor,
        body: BlocListener<LogOutBloc,LogOutState>(
          listener: (context, state) {
            if (state is LogOutFailureState) {
              showSnackBar(context: context, error: state.error);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(primaryHorizontalSpacing),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(localizations.settings_setting_text,
                  style: AppTextStyle.largeHeaderBold),
              buildSettingSubTitle(
                  subtitle: localizations.settings_account_text),
              UserIntroContent(),
              buildSettingSubTitle(
                  subtitle: localizations.settings_setting_text),
              SettingOption(
                icon: Icons.edit_note,
                title: localizations.admin_total_leave_count_text,
                onTap: ()=>context.pushNamed(Routes.updateLeaveCount),
              ),
              BlocBuilder<LogOutBloc, LogOutState>(
                  builder: (context, state) => state is LogOutLoadingState
                      ? const CircularProgressIndicator()
                      : const AdminSettingSignOutButton()),
            ]),
          ),
        ));
  }
}

class AdminSettingSignOutButton extends StatelessWidget {
  const AdminSettingSignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingOption(
      icon: Icons.logout_rounded,
      title: AppLocalizations.of(context).logout_button_text,
      onTap: () {
        context.read<LogOutBloc>().add(LogOutEvent());
      },
      iconColor: AppColors.redColor,
      titleColor: AppColors.redColor,
    );
  }
}
