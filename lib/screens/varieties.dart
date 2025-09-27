import 'package:flutter/material.dart';

class VarietiesScreen extends StatelessWidget {
  const VarietiesScreen({super.key});

  final String content = """
🌱 শীমের প্রকারভেদ

১. দেশি বা স্থানীয় শীম  
- সাধারণত গ্রামবাংলায় বেশি দেখা যায়।  
- শীতকালীন মৌসুমে চাষ হয়।  
- লতা বেশ লম্বা হয় এবং গাছে প্রচুর ফুল ধরে।  
- ফলন তুলনামূলক কম, তবে স্বাদ খুব ভালো।  
- খোসা মোটা ও বীজ বড়।  

২. আগাম বা ঝিঙে শীম  
- ফল নরম ও মিষ্টি।  
- বেশি দিন সংরক্ষণ করা যায় না।  
- শহরে বাজারে শীতের শুরুতে সাধারণত এই শীম বেশি পাওয়া যায়।  

৩. বরবটি শীম  
- বরবটির মতো লম্বাটে আকার।  
- সহজে চাষ করা যায় ও দ্রুত ফলন হয়।  
- সবজি হিসেবে জনপ্রিয়, তবে স্বাদ দেশি শীমের মতো নয়।  

৪. হাইব্রিড শীম  
- আধুনিক কৃষি গবেষণায় তৈরি।  
- ফলন বেশি, রোগ-বালাই কম।  
- BARI Sheem-1 থেকে BARI Sheem-6 পর্যন্ত উন্নত জাত আছে।  
- কিছু জাত বর্ষাতেও চাষযোগ্য।  

৫. বারি শীমের জাত  
- বারি শীম-১: আগাম জাত, দ্রুত ফলন।  
- বারি শীম-২: ফল বড় ও স্বাদে ভালো।  
- বারি শীম-৩: রোগ প্রতিরোধী, ফলন বেশি।  
- বারি শীম-৪: গ্রীষ্মকালীন চাষের উপযোগী।  
- বারি শীম-৫ ও ৬: দীর্ঘসময় ধরে ফলন, বাজারে চাহিদা বেশি।  

৬. লতানো ও গাছি শীম  
- লতানো: মাচা বা বাঁশ দিয়ে চাষ, ফলন বেশি।  
- গাছি: ছোট গাছে ধরে, সহজ চাষযোগ্য, তবে ফলন কম।  
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("শীমের প্রকারভেদ"),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset(
                "assets/images/varieties.png", // 👉 আপনার ইমেজ path দিন
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // Content Card
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
