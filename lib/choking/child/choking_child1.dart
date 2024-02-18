// File: cpr_page.dart
import 'package:flutter/material.dart';
import 'choking_child2.dart';

class ChokingChild1 extends StatelessWidget {
  const ChokingChild1({Key? key}) : super(key: key);

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
            'Step 1: Stand behind the child. Wrap your arms around the child’s waist.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontFamily: 'Times New Roman', fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add your next button functionality here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChokingChild2()),
              );
            },
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
