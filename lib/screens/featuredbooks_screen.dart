import 'package:flutter/material.dart';

import 'package:readsphere_ieee/constants.dart';

import 'package:readsphere_ieee/widgets/specific_category_container.dart';

class FeaturedbooksScreen extends StatelessWidget {
  const FeaturedbooksScreen({super.key});
  static String id = "FeaturedbooksScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Featured books"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const SpecificCategoryContainer(
                buttonText: "continue read",
              );
            }));
  }
}
