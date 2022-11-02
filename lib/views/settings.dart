import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../constants.dart';

class Settings extends StatefulWidget {
  Function changeTheme;

  Settings({Key? key, required this.changeTheme}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appBarTitle),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (bool value) {
                  setState(() {
                    _isChanged = value;
                    widget.changeTheme();
                  });
                },
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
                initialValue: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
