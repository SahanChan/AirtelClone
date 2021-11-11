import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image(
                width: 150,
                height: 200,
                image: AssetImage('assets/airtelLogo2.png'),
              ),
            ),
          ),
          SpinKitSpinningLines(color: Colors.white),
        ],
      ),
    );
  }
}
