import 'package:flutter/material.dart';

import '../../data/configs/colors.dart';

class ImageProfile extends StatelessWidget {
  final String? imageUrl;
  final double radius;
  final double borderSize;
  final Color borderColor;
  final Color backgroundColor;
  final Color iconColor;

  const ImageProfile(
      {Key? key,
      this.imageUrl,
      required this.radius,
      this.borderSize = 2,
      this.borderColor = AppColors.textFieldBg,
      this.backgroundColor = AppColors.primaryGray,
      this.iconColor = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: borderColor,
      radius: radius + borderSize,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        backgroundImage: (imageUrl != null) ? NetworkImage(imageUrl!) : null,
        child: (imageUrl != null)
            ? null
            : Icon(Icons.person, size: radius, color: iconColor),
      ),
    );
  }
}
