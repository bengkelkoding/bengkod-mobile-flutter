import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class AppCardMentor extends StatelessWidget {
  const AppCardMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/image/mentor.jpeg"),
          ),
          const SizedBox(height: 10),
          Text(
            'Azizi',
            style: AppTextStyle.textStyle(
              size: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
