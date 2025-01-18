import 'package:flutter/material.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0064D2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset('assets/icons/verified.png', height: 200, width: 600
            ),
            const SizedBox(height: 40),
            const Text(
              'Order confirmed',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            const SizedBox(height: 15),
            const Text(
              'Thank you for your order. You will receive email confirmation shortly.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),),
            const SizedBox(height: 41),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transaction_details');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFFFFFF),
                padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                textStyle: const TextStyle(fontSize: 20,),
              ),
              child: const Text('See Details',
              style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
