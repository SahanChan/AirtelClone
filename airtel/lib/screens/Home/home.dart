import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<bool> _selections = List.generate(3, (_) => false);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Image(
              image: AssetImage('assets/airtelLogo.png'),
              width: 150,
              height: 50,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/home_1.png'),
                width: 250,
                height: 250,
              ),
            ),
            Center(
              child: Text(
                'Welcome.',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Explore all services at your fingertips',
                style: TextStyle(
                    color: Colors.grey[400], fontSize: 15, letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ToggleButtons(
                borderRadius: BorderRadius.circular(20),
                direction: Axis.vertical,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: Text('English'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: Text('සිංහල'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    child: Text('தமிழ்'),
                  ),
                ],
                onPressed: (int index) {
                  setState(() {
                    _selections[index] = !_selections[index];
                  });
                },
                isSelected: _selections,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Get Started');
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  print("Skip for now");
                },
                child: Text(
                  "Skip for now",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                    overlayColor: MaterialStateProperty.all(Colors.grey[200])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
