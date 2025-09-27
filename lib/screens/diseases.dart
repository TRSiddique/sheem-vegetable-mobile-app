import 'package:flutter/material.dart';

class DiseasesScreen extends StatelessWidget {
  const DiseasesScreen({super.key});

  final String content = """
শিমের সাধারণ রোগগুলির মধ্যে রয়েছে মোজাইক রোগ, গোড়া পচা রোগ এবং মরিচা রোগ। মোজাইক রোগের জন্য আক্রান্ত গাছ ধ্বংস করা ও ইমিডাক্লোপ্রিড স্প্রে করা যেতে পারে। গোড়া পচা রোগ নিয়ন্ত্রণে বীজ শোধন করা এবং ট্রাইকোডারমা ব্যবহার করা জরুরি। মরিচা রোগ দমনে জৈব সার ব্যবহার ও রোগাক্রান্ত পাতা অপসারণ এবং উপযুক্ত কীটনাশক স্প্রে করার সুপারিশ করা হয়। 

শিমের প্রধান রোগসমূহ ও তাদের প্রতিকার

১. মোজাইক রোগ (Mosaic Disease)
লক্ষণ: গাছের পাতায় হলুদ ও গাঢ় সবুজ ছোপ ছোপ মোজাইক দেখা যায়, পাতা কুঁকড়ে যায় এবং স্বাভাবিক বৃদ্ধি ব্যাহত হয়। 
প্রতিকার:
✔ আক্রান্ত গাছ खेत থেকে তুলে ধ্বংস করুন। 
✔ জাপ পোকা এ রোগের বাহক, তাই ইমিডাক্লোপ্রিড গ্রুপের কীটনাশক (যেমন এডমায়ার) স্প্রে করুন। 
✔ সহনশীল জাতের রোগমুক্ত বীজ ব্যবহার করুন। 
✔ ফসলের আবর্তন (Crop Rotation) করে মাটির উর্বরতা বাড়ান। 

২. গোড়া পচা/শিকড় পচা রোগ (Root Rot) 
লক্ষণ: গাছ খর্বাকৃতি হয়, পাতা কুঁচকে যায়, অতিরিক্ত শাখা-প্রশাখা বের হয় ও ফল ধারণ ক্ষমতা কমে যায়। 
প্রতিকার:
✔ আক্রান্ত গাছ সংগ্রহ করে ধ্বংস বা পুড়িয়ে ফেলুন। 
✔ বপনের আগে বীজ শোধন করুন। ভিটাভেক্স (২.৫ গ্রাম) বা ব্যাভিষ্টিন (২ গ্রাম) প্রতি কেজি বীজের জন্য ব্যবহার করা যেতে পারে। 
✔ ট্রাইকোডারমা ভিডিডি (৩-৪ গ্রাম) বীজ বা মাটিতে ব্যবহার করুন। 

৩. মরিচা রোগ (Rust Disease) 
লক্ষণ: পাতার নিচের পৃষ্ঠে মরিচা রঙের দাগ দেখা দেয়। আক্রান্ত পাতা হলুদ হয়ে শুকিয়ে ঝরে পড়ে। কাণ্ড ও শুঁটিও আক্রান্ত হতে পারে।
প্রতিকার:
✔ জৈব নিয়ন্ত্রণ হিসেবে ব্যাসিলাস সাবটিলিস বা অন্যান্য জৈব কীটনাশক ব্যবহার করা যেতে পারে। 
✔ আক্রান্ত পাতা বা গাছ অপসারণ করুন। 
✔ সম্ভব হলে, জৈবিক নিয়ন্ত্রণ ব্যবস্থার মাধ্যমে প্রতিরোধমূলক ব্যবস্থা নিন। 

🌱 সাধারণ ব্যবস্থাপনা পদ্ধতি 
✔ শিম চাষের জমিতে জৈব সার যেমন গোবর, হাস-মুরগির বিষ্ঠা ইত্যাদি প্রয়োগ করুন। 
✔ শিম গাছের বৃদ্ধির জন্য মাচা বা বাউনি তৈরি করুন। 
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("শিমের রোগ ও প্রতিকার"),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Image.asset(
                "assets/images/medicine.png", // আপনার ইমেজ path দিন
                height: 200,
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
                      offset: const Offset(0, 4))
                ],
              ),
              child: Text(
                content,
                style: const TextStyle(
                    fontSize: 16, height: 1.6, color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
