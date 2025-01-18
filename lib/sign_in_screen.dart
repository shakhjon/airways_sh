import 'package:airways_sh/payment_details_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Start Your Journey with affordable price'),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                labelText: 'EMAIL',
                hintText: 'Enter Your Email',
              ),
            ),
            const SizedBox(height: 24),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'PASSWORD',
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentDetailsScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color(0xff0064D2),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign in', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Icon(Icons.check_circle, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Center(child: Text('Or Sign In With')),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Image.asset('assets/icons/Facebook.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/icons/Google.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/icons/Apple.png'),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t Have an Account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
