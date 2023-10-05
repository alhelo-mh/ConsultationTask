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

  @override
  void initState() {
    for (int i = 0; i < consultations.length; i++) {
      itemList.add(buildConsultationItem(consultations[i]));

      if ((i + 1) % 2 == 0 && advertisements.isNotEmpty) {
        itemList.add(buildAdvertisementItem(advertisements.removeAt(0)));
      }
    }
    itemList.addAll(advertisements.map((ad) => buildAdvertisementItem(ad)));
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
