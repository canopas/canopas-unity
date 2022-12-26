import 'package:flutter/material.dart';
import 'package:projectunity/configs/text_style.dart';
import 'package:projectunity/widget/user_profile_image.dart';
import '../../core/utils/const/space_constant.dart';
import '../../model/employee/employee.dart';

class UserContent extends StatelessWidget {
  final Employee employee;
  final void Function()?  onTap;
  const UserContent({Key? key, required this.employee, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: primaryVerticalSpacing),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: primaryHalfSpacing ,horizontal: primaryVerticalSpacing),
          child: Row(
            children: [
              ImageProfile(radius: 30, imageUrl: employee.imageUrl),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserName(name: employee.name),
                  const SizedBox(
                    height: 3,
                  ),
                  _buildDesignation(designation: employee.designation)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _buildDesignation({required String designation}) {
    return Text(
      designation,
      style: AppTextStyle.secondaryBodyText
    );
  }
}

Text _buildUserName({required String name}) {
  return Text(
    name,
    style: AppTextStyle.subtitleTextDark.copyWith(fontWeight: FontWeight.w600),
  );
}