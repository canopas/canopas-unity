import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectunity/core/utils/const/other_constant.dart';
import 'package:projectunity/di/service_locator.dart';
import 'package:projectunity/provider/user_data.dart';

import '../../../../configs/text_style.dart';
import '../../../../widget/user_profile_image.dart';

class UserIntroContent extends StatelessWidget {
  UserIntroContent({
    Key? key,
  }) : super(key: key);
  final UserManager _userManager = getIt<UserManager>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            ImageProfile(
              radius: 38,
            ),
            const SizedBox(
              width: primaryHorizontalSpacing,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_userManager.userName, style: AppTextStyle.headerTextBold),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  _userManager.employeeDesignation,
                  style: AppTextStyle.bodyTextDark,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}