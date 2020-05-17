import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Widget> screens = [Featured(), Newest(), Collection(), About()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[400],
        body: Row(
          children: <Widget>[
            NavigationRail(
              backgroundColor: Colors.purple[800],
              selectedIndex: _selectedIndex,
              selectedLabelTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 1.0,
                  decoration: TextDecoration.underline),
              unselectedLabelTextStyle: TextStyle(color: Colors.white),
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              groupAlignment: 1.0,
              labelType: NavigationRailLabelType.all,
              leading: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('featured/IMG.JPG'),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              destinations: [
                // NavigationRailDestination(
                //   icon: Icon(Icons.dashboard, color: Colors.white,),
                //   selectedIcon: Icon(Icons.dashboard, color: Colors.white,),
                //   label: Text("Dashboard", style: TextStyle(color: Colors.white))
                // ),
                // NavigationRailDestination(
                //   icon: Icon(Icons.list, color: Colors.white,),
                //   selectedIcon: Icon(Icons.list, color: Colors.white,),
                //   label: Text("Details", style: TextStyle(color: Colors.white))
                // ),
                // NavigationRailDestination(
                //   icon: Icon(Icons.info_outline, color: Colors.white,),
                //   selectedIcon: Icon(Icons.info, color: Colors.white,),
                //   label: Text("About", style: TextStyle(color: Colors.white))
                // ),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Featured",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Newest",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "Collection",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          "About Us",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ))
              ],
            ),
            Expanded(child: screens[_selectedIndex])
          ],
        ),
      ),
    );
  }
}

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: ListView(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 35, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, size: 35, color: Colors.white)),
            SizedBox(width: 10),
          ]),
          Text(
            "Featured",
            style: TextStyle(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('featured/f1.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('featured/f2.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('featured/f3.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('featured/f6.jpg')),
        ],
      ),
    );
  }
}

class Newest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: ListView(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 35, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, size: 35, color: Colors.white)),
            SizedBox(width: 10),
          ]),
          Text(
            "Newest",
            style: TextStyle(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n1.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n2.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n3.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n4.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n5.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n6.jpg')),
          Divider(color: Colors.transparent, height: 20),
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('newest/n8.jpg')),
        ],
      ),
    );
  }
}

class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Collection",
          style: TextStyle(
              fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "About Us",
            style: TextStyle(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),
          Text(
            "Your App Name",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "www.yourapp.com",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            "yourapp@gmail.com",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
