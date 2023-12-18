import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silk_app/app/router/mobile_routes.dart';
import 'package:silk_app/app/theme/app_colors.dart';
import 'package:silk_app/app/theme/app_text_style.dart';

AppBar appBar(String title, BuildContext context) {
  return AppBar(
    title: Text(title, style: AppTextStyle.mont20breg),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.keyboard_backspace,
        color: AppColors.mainElement,
      ),
      onPressed: () {
        context.go(MobileRoutes.home.path);
      },
    ),
  );
}
