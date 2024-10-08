import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/task1_profile/widgets/avatar_profile_image.dart';
import 'package:sec_flutter_relearn/task1_profile/widgets/settings_card_builder.dart';
import 'package:sec_flutter_relearn/task1_profile/widgets/upgrade_to_pro.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1e1e1e),
      appBar: AppBar(
        backgroundColor: const Color(0xff1e1e1e),
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.sunny),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(),
            AvatarProfileImage(),
            SizedBox(height: 16),
            Column(
              children: [
                Text(
                  'Muhamed Hashesh',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Muhammedhashesh389@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            UpgradePRO(),
            SizedBox(height: 32),
            SettingsCardsBuilder(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
