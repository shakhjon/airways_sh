import 'package:airways_sh/Account_pages/account_page.dart';
import 'package:airways_sh/Account_pages/delete_account_page.dart';
import 'package:airways_sh/Account_pages/settings_page.dart';
import 'package:airways_sh/Transactions//transaction_page.dart';
import 'package:flutter/material.dart';
import 'Intro_pages/sign_in_screen.dart'; // Import your SignInScreen
import 'Intro_pages/sign_up_screen.dart';
import 'Payments/payment_details_screen.dart'; // Import your PaymentDetailsScreen
import 'Payments/passcode_screen.dart'; // Import your PasscodeScreen
import 'Payments/payment_successful_screen.dart'; // Import your PaymentSuccessfulScreen
import 'Transactions/transaction_details_screen.dart'; // Import your TransactionDetailsScreen
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
