import 'package:flutter/material.dart';
import 'package:silk_app/app/theme/app_colors.dart';

class SearchButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const SearchButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainElement,
          minimumSize: const Size(55, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
