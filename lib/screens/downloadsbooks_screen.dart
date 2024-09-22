import 'package:flutter/material.dart';

import 'package:readsphere_ieee/constants.dart';
import 'package:readsphere_ieee/widgets/custom_downloads_container.dart';
import 'package:readsphere_ieee/widgets/customcategory_container.dart';

class DownloadsbooksScreen extends StatelessWidget {
  const DownloadsbooksScreen({super.key});
  static String id = "yourbookmarkes";

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
          title: const Text("Your Downloads"),
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
              return CustomDownloadsContainer();
            }));
  }
}
