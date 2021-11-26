import 'package:airtel/screens/Navigator/navigator_airtel.dart';
import 'package:flutter/material.dart';

class OneTimePassword extends StatefulWidget {
  const OneTimePassword({Key? key}) : super(key: key);

  @override
  _OneTimePasswordState createState() => _OneTimePasswordState();
}

class _OneTimePasswordState extends State<OneTimePassword> {
  _navigatetoNavigator() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => NavigatorAirtel()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  image: AssetImage('assets/otp_1.png'),
                  width: 250,
                  height: 250,
                ),
              ),
              Center(
                child: Text(
                  'Enter OTP sent to your\nNumber',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  'we sent a code to the 075-288-2600',
                  style: TextStyle(
                      color: Colors.grey[400], fontSize: 15, letterSpacing: 1),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    print("change my number");
                  },
                  child: Text(
                    "change my number",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                      overlayColor:
                          MaterialStateProperty.all(Colors.grey[200])),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 60),
                child: TextField(
                  maxLength: 4,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: '',
                    hintText: '0000',
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    print("resend otp");
                  },
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
                      overlayColor:
                          MaterialStateProperty.all(Colors.grey[200])),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('Continue');
                    _navigatetoNavigator();
                  },
                  child: Text(
                    "Continue",
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
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
