import 'package:airways_sh/account_page.dart';
import 'package:airways_sh/delete_account_page.dart';
import 'package:airways_sh/settings_page.dart';
import 'package:airways_sh/transaction_page.dart';
import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; // Import your SignInScreen
import 'sign_up_screen.dart'; // Import your SignUpScreen
import 'payment_details_screen.dart'; // Import your PaymentDetailsScreen
import 'passcode_screen.dart'; // Import your PasscodeScreen
import 'payment_successful_screen.dart'; // Import your PaymentSuccessfulScreen
import 'transaction_details_screen.dart'; // Import your TransactionDetailsScreen
import 'home_page.dart'; // Import your HomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      routes: {
        '/signup': (context) => SignUpScreen(),
        '/signin': (context) => SignInScreen(),
        '/payment': (context) => PaymentDetailsScreen(),
        '/passcode': (context) => const PasscodeScreen(), // Define the passcode route
        '/payment_successful': (context) => PaymentSuccessfulScreen(), // Define the payment successful route
        '/transaction_details': (context) => const TransactionDetailsScreen(), // Define the transaction details route
        '/home': (context) => const  FlightSearchPage(), // Define the home route
        '/account': (context) => const AccountPage(),
        '/settings': (context) => const SettingsPage(),
        '/delete_account': (context) => const DeleteAccountPage(),
        '/Account': (context) => const AccountPage(),
        '/transaction': (context) => const TransactionPage()

      },
    );
  }
}
