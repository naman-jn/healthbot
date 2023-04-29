import 'package:flutter/material.dart';
import 'package:healthbot/styles/app_colors.dart';
import 'package:healthbot/views/chat/chatbot_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        title: const Text(
          'Health Bot',
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen(),
              ),
            );
          },
          child: Container(
            height: 60,
            width: 200,
            decoration: const BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  12,
                ),
              ),
            ),
            child: const Center(
              child: Text(
                'Start Asking',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
