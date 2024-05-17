import 'package:flutter/material.dart';
import 'package:flutter_card_detail/card/view/card_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("學生選課系統"),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardView(),
                  ),
                ),
                child: const Text("依教師分類 (開啟教師清單頁)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
