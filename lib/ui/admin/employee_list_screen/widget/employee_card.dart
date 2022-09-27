import 'package:flutter/material.dart';
import 'package:projectunity/configs/font_size.dart';
import 'package:projectunity/configs/text_style.dart';
import 'package:projectunity/navigation/navigation_stack_manager.dart';
import 'package:projectunity/widget/user_profile_image.dart';

import '../../../../../di/service_locator.dart';
import '../../../../../model/employee/employee.dart';
import '../../../../../navigation/navigationStackItem/admin/admin_navigation_stack_items.dart';
import '../../../../core/utils/const/other_constant.dart';

class EmployeeCard extends StatelessWidget {
  EmployeeCard({Key? key, required this.employee}) : super(key: key);

  final NavigationStackManager _stackManager = getIt<NavigationStackManager>();
  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _stackManager.push(
            AdminNavigationStackItem.employeeDetailState(id: employee.id));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: primaryHorizontalSpacing, vertical: primaryVerticalSpacing),
        child: Row(
          children: [
            ImageProfile(
              imageUrl: employee.imageUrl,
              radius: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EmployeeName(name: employee.name),
                const SizedBox(
                  height: 5,
                ),
                EmployeeDesignation(designation: employee.designation)
              ],
            )
          ],
        ),
      ),
    );
  }
}


class EmployeeName extends StatelessWidget {
  const EmployeeName({Key? key, required this.name}) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Text(
      name ?? '',
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      style: height >= 700
          ? AppTextStyle.titleText
          : AppTextStyle.subtitleText
    );
  }
}

class EmployeeDesignation extends StatelessWidget {
  const EmployeeDesignation({Key? key, required this.designation})
      : super(key: key);
  final String? designation;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Text(
      designation ?? '',
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      style: height >= 700
          ? AppTextStyle.secondaryBodyText.copyWith(fontSize: subTitleTextSize)
          : AppTextStyle.secondaryBodyText
    );
  }
}
