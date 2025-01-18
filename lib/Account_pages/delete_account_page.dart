import 'package:flutter/material.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/delete_account.png', // Replace with your asset path
                    height: 200,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'You sure want to delete your account?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'If you delete your account:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const Text(
              '- Your remaining ticket Points cannot be used anymore.\n'
                  '- Your tiket Elite Rewards benefits will not be available anymore.\n'
                  '- All your pending rewards will be deleted.\n'
                  '- All rewards from using credit card can no longer be obtained.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Expanded(
                  child: Text(
                    'I understand and accept all the above risks regarding my account deletion.',
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: isChecked
                  ? () {
                // Add your logic for account deletion here
              }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'Yes, Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
