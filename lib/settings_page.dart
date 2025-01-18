import 'package:airways_sh/language_page.dart';
import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
            },
          ),
          SwitchListTile(
            title: Text('Location'),
            value: true,
            onChanged: (value) {},
          ),
          Divider(),
          ListTile(
            title: Text('Privacy Policy'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Terms and Conditions'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
