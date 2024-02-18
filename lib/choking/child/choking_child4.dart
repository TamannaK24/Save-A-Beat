// File: cpr_page.dart
import 'package:flutter/material.dart';

class ChokingChild4 extends StatelessWidget {
  const ChokingChild4({Key? key}) : super(key: key);

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
            'Step 4: Repeat this inward and upward thrust until the piece of food or object comes out. Once the object comes out, take your child to the doctor. A piece of the object can still be in the lung.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontFamily: 'Times New Roman', fontWeight: FontWeight.bold),
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
