import 'package:flutter/material.dart';
// import 'farmer_screen.dart';
// import 'non_farmer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4CAF50), Color(0xFFA5D6A7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/sheem.png",
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "সবজি তথ্য অ্যাপ - শিম",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),

              // Farmer card
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //  // context,
                  //  // MaterialPageRoute(builder: (_) => const FarmerScreen()),
                  // );
                },
                child: _buildCard(
                  icon: Icons.agriculture,
                  color: Colors.green,
                  text: "চাষিদের জন্য তথ্য",
                ),
              ),

              // Non-farmer card
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => const NonFarmerScreen()),
                  // );
                },
                child: _buildCard(
                  icon: Icons.food_bank,
                  color: Colors.orange,
                  text: "সাধারণ মানুষের জন্য তথ্য",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required IconData icon, required Color color, required String text}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(2, 4)),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(width: 20),
          Text(text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
