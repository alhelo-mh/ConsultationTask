import 'package:consultation_task/utils/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.darkGray,
          statusBarIconBrightness: Brightness.light),
      backgroundColor: AppColors.lightBlue,
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'إستشارات',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
          color: AppColors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: AppColors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward),
          color: AppColors.white,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
