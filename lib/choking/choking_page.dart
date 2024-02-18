import 'package:flutter/material.dart';
import 'adult/choking_adult1.dart';
import 'child/choking_child1.dart';
import 'infant/choking_infant1.dart';

class ChokingPage extends StatelessWidget {
  const ChokingPage({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Text(
              'How old is the victim? ',
              style: TextStyle(fontSize: 32, fontFamily: 'Times New Roman'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your next button functionality here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChokingInfant1()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60),
                backgroundColor: const Color(0xFFC8102E),
              ),
              child: const Text(
                'INFANT',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Times New Roman',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '(Less than 12 months)',
              style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your next button functionality here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChokingChild1()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60),
                backgroundColor: const Color(0xFF2B2D42),
              ),
              child: const Text(
                'CHILD',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Times New Roman',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '(Ages 1 to 12 years)',
              style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your next button functionality here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChokingAdult1()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'ADULT',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Times New Roman',
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
