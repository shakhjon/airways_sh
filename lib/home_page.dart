import 'package:flutter/material.dart';

class FlightSearchPage extends StatefulWidget {
  const FlightSearchPage({Key? key}) : super(key: key);

  @override
  State<FlightSearchPage> createState() => _FlightSearchPageState();
}

class _FlightSearchPageState extends State<FlightSearchPage> {
  bool isOneWay = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        elevation: 0,
        title: const Text(
          'Search Flights',
          style: TextStyle(fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sarlavha
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'a new world',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Oq karta qismi
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // One-way va Round-trip
                      Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue: isOneWay,
                            onChanged: (bool? value) {
                              setState(() => isOneWay = value!);
                            },
                            activeColor: Colors.blue[700],
                          ),
                          const Text(
                            'One-way',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 20),
                          Radio(
                            value: false,
                            groupValue: isOneWay,
                            onChanged: (bool? value) {
                              setState(() => isOneWay = value!);
                            },
                            activeColor: Colors.blue[700],
                          ),
                          const Text(
                            'Round-trip',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // From
                      _buildInputField(
                        label: 'From',
                        icon: Icons.flight_takeoff,
                        placeholder: 'New York, USA',
                      ),
                      const SizedBox(height: 16),

                      // To
                      _buildInputField(
                        label: 'To',
                        icon: Icons.flight_land,
                        placeholder: 'Da Nang, Vietnam',
                      ),
                      const SizedBox(height: 16),

                      // Departure Date
                      _buildInputField(
                        label: 'Departure Date',
                        icon: Icons.calendar_today,
                        placeholder: 'August 28, 2021',
                      ),
                      const SizedBox(height: 16),

                      // Travelers
                      _buildInputField(
                        label: 'Travelers',
                        icon: Icons.person_outline,
                        placeholder: '1 Adult, 1 Child, 0 Infant',
                      ),
                      const SizedBox(height: 15),

                      // Search Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Search flights',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/transaction');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/account');
          }
        },
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required IconData icon,
    required String placeholder,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 2),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.blue[700]),
              const SizedBox(width: 12),
              Text(
                placeholder,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
