import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/task1_profile/models/settings_list.dart';
import 'package:sec_flutter_relearn/task1_profile/widgets/avatar_profile_image.dart';
import 'package:sec_flutter_relearn/task1_profile/widgets/settings_item.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const Row(),
            const SizedBox(height: 24),
            const AvatarProfileImage(),
            const SizedBox(height: 16),
            const Text(
              'Muhamed Hashesh',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Muhammedhashesh389@gmail.com',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            const UpgradePRO(),
            const SizedBox(height: 32),
            Column(
              children: List.generate(
                settingsList.length,
                (index) => SettingsCard(
                  label: settingsList[index]['title'],
                  icon: settingsList[index]['icon'],
                  hasArrow:
                      settingsList[index]['title'] == 'Logout' ? false : true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
