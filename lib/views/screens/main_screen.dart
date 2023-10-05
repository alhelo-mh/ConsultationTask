import 'package:flutter/material.dart';
import 'package:consultation_task/views/screens/feed_screen.dart';
import 'package:consultation_task/views/widgets/app_bar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(appBar: AppBarWidget(), body: FeedHomeScreen()),
    );
  }
}
