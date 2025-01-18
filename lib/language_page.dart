import 'package:flutter/material.dart';
class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
      ),
      body: ListView(
        children: [
          RadioListTile(
            title: const Text('English'),
            value: 'English',
            groupValue: 'English',
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text('Vietnamese'),
            value: 'Vietnamese',
            groupValue: 'English',
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text('French'),
            value: 'French',
            groupValue: 'English',
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
