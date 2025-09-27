import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String content = """
শিম (ইংরেজি: Bean) একটি অতি পরিচিত লতাজাতীয় গাছ। এটি বিভিন্ন প্রজাতির হয়ে থাকে ও এটি ফাবাসিয়া শ্রেণিভুক্ত। শিম মানুষ ও পশুর খাবার হিসেবে ব্যবহৃত হয়। পেকে শুকিয়ে যাবার আগে যদি শিমের শুঁটি তোলা যায় তবে তা হয় সতেজ কাঁচা যা রান্না করে খাওয়ার মতো। সবুজ শিম মানে পেকে না যাওয়া শিম।এটি ফ্যাবেসি বা লেগুমিনোসিয়া পরিবারের একটি সদস্য এবং বিভিন্ন প্রজাতিতে পাওয়া যায়, যার মধ্যে দেশি শিম বাংলাদেশে খুব জনপ্রিয়।এই সবজি প্রোটিন, ভিটামিন, খনিজ ও আঁশে ভরপুর, যা শরীরের জন্য অত্যন্ত উপকারী।

শিমের মধ্যে প্রোটিন, জটিল শর্করা, ফোলেট এবং আয়রন বেশি থাকে। শিমেও প্রচুর পরিমাণে ফাইবার (তন্তু, আঁশ) এবং দ্রবণীয় ফাইবার থাকে। এক কাপ রান্না করা শিম ৯ থেকে ১৩ গ্রাম ফাইবার সরবরাহ করে। দ্রবণীয় ফাইবার রক্তের কোলেস্টেরল হ্রাস করতে সহায়তা করে।

পুষ্টিগুণ ও উপকারিতা:
প্রোটিন সমৃদ্ধ: শিম একটি উত্তম প্রোটিনের উৎস, যা পেশি গঠনে সাহায্য করে।
ভিটামিন ও খনিজ: এতে ক্যালসিয়াম, ভিটামিন বি-১ ও বি-২ সহ বিভিন্ন ভিটামিন ও খনিজ উপাদান রয়েছে, যা শরীরের জন্য প্রয়োজনীয়।
আঁশযুক্ত: শিমের আঁশ হজম প্রক্রিয়াকে উন্নত করে এবং কোষ্ঠকাঠিন্য দূর করতে সাহায্য করে।
শক্তিদায়ক: এতে খাদ্যশক্তি ও শর্করা থাকে, যা শরীরকে প্রয়োজনীয় শক্তি যোগায়।
""";

    return Scaffold(
      appBar: AppBar(
        title: const Text("বিস্তারিত"),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ Cover Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset(
                "assets/images/sheem1.png", // নিজের ইমেজ path
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // ✅ Content Card
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ✅ Title
                      Center(
                        child: Text(
                          "🌱 শিম",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // ✅ Description
                      Text(
                        content,
                        style: const TextStyle(
                          fontSize: 18,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.justify,
                      ),

                      const SizedBox(height: 20),

                      // ✅ Footer
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "তথ্যসূত্র: কৃষি গবেষণা প্রতিষ্ঠান",
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      )
                    ],
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
