import 'package:airtel/screens/EntertainmentMovie/entertainment_movie.dart';
import 'package:airtel/screens/Menu/menu.dart';
import 'package:airtel/screens/Profile/profile.dart';
import 'package:airtel/screens/Splash/splash.dart';
import 'package:flutter/material.dart';

class NavigatorAirtel extends StatefulWidget {
  const NavigatorAirtel({Key? key}) : super(key: key);

  @override
  _NavigatorAirtelState createState() => _NavigatorAirtelState();
}

class _NavigatorAirtelState extends State<NavigatorAirtel> {
  _navigatetoEntertainment() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EntertainmentMovie()));
  }

  _navigatetoProfile() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }

  _navigatetoMenu() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
  }

  _navigatetoSplash() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Splash()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Image(
          image: AssetImage('assets/airtelIcon.png'),
        ),
        onPressed: () {
          _navigatetoSplash();
        },
        backgroundColor: Colors.white,
      ),
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
                image: AssetImage('assets/navigator.png'),
                width: 250,
                height: 250,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                _navigatetoProfile();
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('My Profile'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Icon(Icons.account_box),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                _navigatetoMenu();
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('My Usage'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Icon(Icons.account_balance),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                _navigatetoEntertainment();
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('Entertainment'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Icon(Icons.headphones),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text('Recharge'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(Icons.receipt),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
