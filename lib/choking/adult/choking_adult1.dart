// File: cpr_page.dart
import 'package:flutter/material.dart';
import 'choking_adult2.dart';

class ChokingAdult1 extends StatelessWidget {
  const ChokingAdult1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Save-A-Beat"),
        backgroundColor: const Color(0xFF797979),
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Step 1: Stand behind the victim who’s choking. Place your arms around their waist and bend them forward.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontFamily: 'Times New Roman', fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your next button functionality here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChokingAdult2()),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 60),
            ),
            child: const Text(
              'Next',
              style: TextStyle(fontSize: 24, color: Colors.black, fontFamily: 'Times New Roman'),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 50),
              backgroundColor: const Color(0xFFC8102E),
            ),
            child: const Text(
              'CALL 911',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: 'Times New Roman',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
