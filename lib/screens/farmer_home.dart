import 'package:flutter/material.dart';
import '../models/vegetable.dart';
import 'details_screen.dart';
import 'farming_rules.dart';
import 'diseases.dart';
import 'varieties.dart';

class FarmerHomeScreen extends StatelessWidget {
  const FarmerHomeScreen({super.key});

  final List<Map<String, dynamic>> menuItems = const [
    {
      "title": "বিস্তারিত",
      "icon": Icons.info,
      "page": DetailsScreen(),
    },
    {
      "title": "চাষ পদ্ধতি",
      "icon": Icons.agriculture,
      "page": FarmingRulesScreen(),
    },
    {
      "title": "রোগবলাই",
      "icon": Icons.sick,
      "page": DiseasesScreen(),
    },
    {
      "title": "শীমের প্রকারভেদ",
      "icon": Icons.category,
      "page": VarietiesScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${sheem.name} - কৃষক বিভাগ"),
        backgroundColor: Colors.green.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: menuItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // ২ কলামে দেখাবে
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item["page"]),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                color: Colors.green.shade50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item["icon"], size: 50, color: Colors.green.shade800),
                    const SizedBox(height: 10),
                    Text(
                      item["title"],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
