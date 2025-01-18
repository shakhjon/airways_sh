import 'package:flutter/material.dart';

class PaymentDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Details'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Digital payment method(s)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildPaymentMethod(
              icon: Icons.credit_card,
              title: 'Credit/Debit card',
              subtitle: '****8919',
              onTap: () {},
            ),
            _buildPaymentMethod(
              icon: Icons.paypal,
              title: 'Paypal',
              subtitle: 'Pay with Paypal',
              onTap: () {},
            ),
            const SizedBox(height: 20),
            const Text(
              'Add methods',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildAddMethod(
              icon: Icons.credit_card,
              title: 'Credit/debit card',
              subtitle: 'Add Credit/Debit card, e.g. 428',
              onTap: () {},
            ),
            _buildAddMethod(
              icon: Icons.monetization_on,
              title: 'Transfer',
              subtitle: 'Add ACH, international banking & mobile banking',
              onTap: () {},
            ),
            const Spacer(),
            _buildTotalSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethod({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(
        icon: const Icon(Icons.edit, color: Colors.blue),
        onPressed: onTap,
      ),
    );
  }

  Widget _buildAddMethod({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: TextButton(
        onPressed: onTap,
        child: const Text('Add'),
      ),
    );
  }

  Widget _buildTotalSection(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal'),
            Text('\$132'),
          ],
        ),
        const SizedBox(height: 10),
        ElevatedButton(
        onPressed: () {
        Navigator.pushNamed(context, '/passcode'); // Navigate to Passcode screen
        },
        style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: const Color(0xff0064D2),
        ),
        child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Proceed the Payment', style: TextStyle(color: Colors.white)),
        SizedBox(width: 10),
        Icon(Icons.arrow_forward, color: Colors.white),
          // style: ElevatedButton.styleFrom(
          //   minimumSize: Size(double.infinity, 50),
          //   backgroundColor: Color(0xff0064D2),
          // ),
            ],
          ),
        ),
      ],
    );
  }
}
