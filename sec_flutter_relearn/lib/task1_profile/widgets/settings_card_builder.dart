import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/task1_profile/widgets/settings_item.dart';

import '../models/settings_list.dart';

class SettingsCardsBuilder extends StatelessWidget {
  const SettingsCardsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        settingsList.length,
        (index) => SettingsCard(
          label: settingsList[index]['title'],
          icon: settingsList[index]['icon'],
          hasArrow: settingsList[index]['title'] == 'Logout' ? false : true,
        ),
      ),
    );
  }
}
