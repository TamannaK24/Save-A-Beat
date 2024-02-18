import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../choking/choking_page.dart';
import '../cpr/lib/cpr/cpr_page.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double buttonWidth = screenWidth * 0.8;
    final double buttonHeight = 60;

    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              Image.asset(
                'assets/save_a_beat_logo.png', // Replace with your actual image path
                height: 200, // Set the height as per your requirement
              ),
              const SizedBox(height: 10),
              const Text(
                'Identify the situation: ',
                style: TextStyle(fontSize: 32, fontFamily: 'Times New Roman'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Display confirmation dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Call 911'),
                        content: const Text('Are you sure you want to call 911?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // Close the dialog
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () async {
                              // Initiate a call to 911
                              const url = 'tel:911';
                              if (await canLaunch(url)) {
                                await launch(url);
                              }
                              // Close the dialog
                              Navigator.of(context).pop();
                            },
                            child: const Text('Call'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(buttonWidth, buttonHeight),
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  navigatorKey.currentState!.push(
                    MaterialPageRoute(builder: (context) => const CPRPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(buttonWidth, buttonHeight),
                  backgroundColor: const Color(0xFF2B2D42),
                ),
                child: const Text(
                  'CPR',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  navigatorKey.currentState!.push(
                    MaterialPageRoute(builder: (context) => const ChokingPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(buttonWidth, buttonHeight),
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  'CHOKING HAZARD',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
