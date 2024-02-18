import 'package:flutter/material.dart';

class CPRChild extends StatelessWidget {
  const CPRChild({Key? key}) : super(key: key);

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
            onPressed: () {
              // Handle any actions you want for this page
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Position the hill of one hand on the center of the child’s chest. Place your other hand on top with your elbows locked and arms straight. Lean over the child’s chest and compress the chest two inches in depth. Continue CPR until you see signs of life or until another rescuer takes over or help arrives. Follow the audio to give 30 compressions 100-120 BPM steady compressions per minute and 2 rescue breaths.",
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
