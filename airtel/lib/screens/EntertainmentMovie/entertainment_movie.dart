import 'package:airtel/screens/EntertainmentVAS/entertainment_vas.dart';
import 'package:flutter/material.dart';

class EntertainmentMovie extends StatefulWidget {
  const EntertainmentMovie({Key? key}) : super(key: key);

  @override
  _EntertainmentMovieState createState() => _EntertainmentMovieState();
}

class _EntertainmentMovieState extends State<EntertainmentMovie> {
  _navigatetoVas() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => EntertainmentVas()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(color: Colors.redAccent),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Entertainment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Positioned(
                  top: 120,
                  // width: 600,
                  child: Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/cinema.png'),
                    height: 160,
                  ),
                ),
                Positioned(
                  top: 95,
                  left: 42,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Movie');
                        },
                        child: Text(
                          'Movie',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Vas');
                          _navigatetoVas();
                        },
                        child: Text(
                          'VAS',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Services');
                        },
                        child: Text(
                          'Services',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 180,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          'Watch Free',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -30,
                        right: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/beach.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -30,
                        left: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/gravel.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/person.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          'Bundles',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -30,
                        right: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/ship.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -30,
                        left: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/sky.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/flower.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
