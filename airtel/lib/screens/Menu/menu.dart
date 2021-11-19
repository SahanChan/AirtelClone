import 'package:flutter/material.dart';
// import 'package:custom_navigator/custom_navigator.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey[200],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_square),
            label: 'Packs',
            backgroundColor: Colors.grey[200],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
            backgroundColor: Colors.grey[200],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
            backgroundColor: Colors.grey[200],
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  // color: Colors.red,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(300),
                        bottomRight: Radius.circular(300)),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 95,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 80.0,
                      minRadius: 80.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/profileImage.jpg'),
                        radius: 70.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '075-XXX-XXXX',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'View Profile',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'search',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  leading: Icon(
                    Icons.credit_card,
                    color: Colors.redAccent,
                  ),
                  minLeadingWidth: 5,
                  title: Text(
                    "Packs & Reload",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("Lorem Ipsum dolor sit amet consecteturelit.",
                      style: TextStyle(fontSize: 10)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  leading: Icon(
                    Icons.alarm_add,
                    color: Colors.redAccent,
                  ),
                  minLeadingWidth: 5,
                  title: Text(
                    "Manage Connections",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("Lorem Ipsum dolor sit amet consecteturelit.",
                      style: TextStyle(fontSize: 10)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.redAccent,
                  ),
                  minLeadingWidth: 5,
                  title: Text(
                    "My Usage",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("Lorem Ipsum dolor sit amet consecteturelit.",
                      style: TextStyle(fontSize: 10)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  leading: Icon(
                    Icons.savings,
                    color: Colors.redAccent,
                  ),
                  minLeadingWidth: 5,
                  title: Text(
                    "My Balance",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("Lorem Ipsum dolor sit amet consecteturelit.",
                      style: TextStyle(fontSize: 10)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  leading: Icon(
                    Icons.headset,
                    color: Colors.redAccent,
                  ),
                  minLeadingWidth: 5,
                  title: Text(
                    "Entertainment",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("Lorem Ipsum dolor sit amet consecteturelit.",
                      style: TextStyle(fontSize: 10)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  leading: Icon(
                    Icons.headset_mic,
                    color: Colors.redAccent,
                  ),
                  minLeadingWidth: 5,
                  title: Text(
                    "Entertainment 2",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("Lorem Ipsum dolor sit amet consecteturelit.",
                      style: TextStyle(fontSize: 10)),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
