import 'package:flutter/material.dart';

class EnterMobile extends StatefulWidget {
  const EnterMobile({Key? key}) : super(key: key);

  @override
  _EnterMobileState createState() => _EnterMobileState();
}

class _EnterMobileState extends State<EnterMobile> {
  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Enter Your\nMobile Number',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 30,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'sign in to connect with My Airtel',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 60),
              child: TextField(
                maxLength: 10,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: '',
                  hintText: '075-XXX-XXXX',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Got a promo code ?',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                  letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(
              height: 160,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Next');
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 15,
                  )),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
