import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carou1.jpg'),
          AssetImage('images/carou2.jpg'),
          AssetImage('images/carou3.png'),
        ],
        autoplay: false,
        //animationCurve: Curves.fastLinearToSlowEaseIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        //indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        //centerTitle: true,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Ameerul Arief'),
              accountEmail: Text('ameerul1102@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.pink),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('HomePage'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Caterogies'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //image carousel begin here
          imageCarousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8),
            child: new Text('Categories'),
            // horizontal listview begin here
          ),
        ],
      ),
    );
  }
}
