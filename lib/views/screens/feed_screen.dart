import 'package:flutter/material.dart';
import 'package:consultation_task/data/lists/list_of_advs.dart';
import 'package:consultation_task/data/lists/list_of_consultations.dart';
import 'package:consultation_task/views/widgets/list_advs_widgets.dart';
import 'package:consultation_task/views/widgets/list_consultations_widget.dart';

class FeedHomeScreen extends StatefulWidget {
  const FeedHomeScreen({super.key});

  @override
  State<FeedHomeScreen> createState() => _FeedHomeScreenState();
}

class _FeedHomeScreenState extends State<FeedHomeScreen> {
  List<Widget> itemList = [];
  bool isLoading = false;

  @override
  void initState() {
    setState(() {});
    for (int i = 0; i < consultations.length; i++) {
      itemList.add(buildConsultationItem(consultations[i]));
    }
    Future.delayed(const Duration(seconds: 5), () {
      itemList.clear();
      for (int i = 0; i < consultations.length; i++) {
        itemList.add(buildConsultationItem(consultations[i]));
        if ((i + 1) % 2 == 0 && advertisements.isNotEmpty) {
          if (isLoading == false) {
            if (mounted) {
              setState(() {
                isLoading = true;
              });
            }
          }
          setState(() {});
          itemList.add(
              buildAdvertisementItem(advertisements.removeAt(0), isLoading));
        }
      }
    });
    itemList.addAll(
        advertisements.map((ad) => buildAdvertisementItem(ad, isLoading)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return itemList[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}
