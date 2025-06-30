import 'package:flutter/material.dart';
import 'package:mon_projet/widgets/components/reusabled_grid.dart';
import '../widgets/components/custom_app_bar.dart';
import '../widgets/components/custom_title.dart';
import '../widgets/components/item_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> items = [
    "Item 1", "Item 2", "Item 3",
    "Item 4", "Item 5", "Item 6"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const CustomTitle(title: 'Home'),
            const SizedBox(height: 30),
            Expanded(
              child: ReusableGrid<String>(
                items: items,
                itemBuilder: (context, item, index) {
                  return GridItem(title: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
