import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FarmingRulesScreen extends StatefulWidget {
  const FarmingRulesScreen({super.key});

  @override
  State<FarmingRulesScreen> createState() => _FarmingRulesScreenState();
}

class _FarmingRulesScreenState extends State<FarmingRulesScreen> {
  // ✅ YouTube Video Controller
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: "aN5xqqCkFGE", // 👉 এখানে আপনার YouTube Video ID দিন
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  String content = """
শিম চাষ করতে হলে প্রথমে ভালো জাতের শিমের বীজ সংগ্রহ করতে হবে, যা বপনের আগে ১০-১২ ঘন্টা ভিজিয়ে নিতে হবে। বীজ থেকে চারা গজানোর পর ১৫-২০ দিন হলে গাছের গোড়ায় বাউনির (মাচান) ব্যবস্থা করতে হবে। শিম একটি নাইট্রোজেন-সংযুক্ত legume ফসল হওয়ায় ইউরিয়া সার প্রয়োগের প্রয়োজন হয় না। উপযুক্ত সময়ে উপযুক্ত স্থানে (বিশেষ করে দো-আঁশ ও বেলে দো-আঁশ মাটিতে) ও সঠিক পরিচর্যা যেমন - সেচ, নিড়ানি ও বালাই দমনের মাধ্যমে শিম চাষ করা যায়। 

১. বীজ বপন: 
ভালো জাতের শিমের বীজ নির্বাচন করুন এবং বীজ বপনের আগে ১০-১২ ঘন্টা পানিতে ভিজিয়ে রাখুন। 
বীজ থেকে চারা বের হওয়ার পর প্রতি মাদায় ২-৩টি সুস্থ চারা রেখে বাকিগুলো তুলে ফেলুন। 

২. বাউনি বা মাচান তৈরি: 
গাছ ১৫-২০ সেন্টিমিটার লম্বা হলে গাছের গোড়ার পাশে বাঁশের ডগা বা কঞ্চি ব্যবহার করে ইংরেজি 'অ' অক্ষরের মতো করে মাচা তৈরি করুন। 

৩. সার প্রয়োগ: 
শিম গাছের শিকড়ে নডিউল বা গুটি তৈরি হয়, যা বাতাস থেকে নাইট্রোজেন সংগ্রহ করে গাছের চাহিদা পূরণ করে। 
তাই শিম চাষে ইউরিয়া সারের প্রয়োজন হয় না, তবে ভালো ফলনের জন্য জৈব সার ও অন্যান্য প্রয়োজনীয় সার পরিমাণমতো প্রয়োগ করতে পারেন। 

৪. পরিচর্যা: 
মাটির আর্দ্রতা বজায় রাখতে নিয়মিত সেচ দিন, তবে খেয়াল রাখবেন যেন গাছের গোড়ায় পানি জমে না থাকে। 
গাছের আগাছা নিয়ন্ত্রণ করুন। 
রোগ ও পোকার আক্রমণ দেখা দিলে সঠিক বালাইনাশক ব্যবহার করে প্রতিকার ব্যবস্থা নিন। 

৫. জাত নির্বাচন: 
বাংলাদেশের আবহাওয়ার জন্য উপযোগী বিভিন্ন জাতের শিম রয়েছে, যেমন - বারি শিম-১, বারি শিম-২, বারি শিম-৩, বারি শিম-৬, নলডগ, হাতিকান, গোলপদ্দা, ইপসা শিম ১, ইপসা শিম ২, এসবি০০২, এসবি০০৮ ইত্যাদি। 

৬. ফলন সংগ্রহ: 
সঠিক পরিচর্যা ও যত্নের মাধ্যমে গাছ বড় হওয়ার পর শিম ফলতে শুরু করবে, যা সংগ্রহ করে বাজারে বিক্রি করা যায় বা বাড়িতে ব্যবহার করা যায়। 
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("চাষাবাদের নিয়ম"),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ YouTube Video Section
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
            ),

            const SizedBox(height: 16),

            // ✅ Content Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                color: Colors.green.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    content,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.6,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
