import 'package:flutter/material.dart';

class NonFarmerHomeScreen extends StatelessWidget {
  const NonFarmerHomeScreen({super.key});

  // ✅ লোকাল ডাটা (asset image + title + content)
  final List<Map<String, String>> items = const [
    {
      "title": "শীমের উপকারীতা",
      "content":
          "শিম প্রোটিন, ভিটামিন, মিনারেল এবং ফাইবার সমৃদ্ধ একটি সবজি। এটি শরীরের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে, রক্তে শর্করার মাত্রা নিয়ন্ত্রণে সাহায্য করে এবং হজম শক্তি বাড়ায়।",
      "image": "assets/images/see.jpg"
    },
    {
      "title": "বাজারদর",
      "content":
          "শীতকালে শীমের দাম প্রতি কেজি ৪০-৬০ টাকা থাকে, তবে মৌসুমের শুরুতে দাম কিছুটা বেশি হতে পারে (৭০-৯০ টাকা)।",
      "image": "assets/images/seee.png"
    },
    {
      "title": "প্রাপ্তি স্থান",
      "content":
          "বাংলাদেশের প্রায় সব অঞ্চলে শীম পাওয়া যায়। বিশেষ করে গ্রামীণ হাটবাজার এবং শহরের সবজি বাজারে শীতকালে শীম সহজলভ্য।",
      "image": "assets/images/seeee.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("অকৃষক বিভাগ")),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  item["image"]!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                item["title"]!,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => NonFarmerDetailPage(
                      title: item["title"]!,
                      content: item["content"]!,
                      image: item["image"]!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// ✅ ডিটেইলস পেজ
class NonFarmerDetailPage extends StatelessWidget {
  final String title;
  final String content;
  final String image;

  const NonFarmerDetailPage({
    super.key,
    required this.title,
    required this.content,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
