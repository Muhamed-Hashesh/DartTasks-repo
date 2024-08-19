import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/task1_profile/widgets/settings_item.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Row(),
            const SizedBox(height: 24),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow[700],
                    radius: 15,
                    child: const Center(
                      child: Icon(
                        Icons.ice_skating,
                        color: Colors.black,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text('Upgrade to PRO'),
            ),
            const SizedBox(height: 32),
            const SettingsCard(
              icon: Icons.privacy_tip_outlined,
              label: 'Privacy',
            ),
            const SettingsCard(
              icon: Icons.privacy_tip_outlined,
              label: 'Privacy',
            ),
            const SettingsCard(
              icon: Icons.privacy_tip_outlined,
              label: 'Privacy',
            ),
            const SettingsCard(
              icon: Icons.privacy_tip_outlined,
              label: 'Privacy',
            ),
            const SettingsCard(
              icon: Icons.privacy_tip_outlined,
              label: 'Privacy',
            ),
            const SettingsCard(
              icon: Icons.privacy_tip_outlined,
              label: 'Privacy',
            ),
          ],
        ),
      ),
    );
  }
}
