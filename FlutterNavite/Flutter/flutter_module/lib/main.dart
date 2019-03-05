import 'package:flutter/material.dart';
import 'drawer_demo_dart.dart';
import 'botton_navigation_bar_demo.dart';
import 'model/listview_demo_dart.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
            primarySwatch: Colors.purple,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70));
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),


          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('Flutter Demo'),
            elevation: 0, //bar下面的阴影
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () =>
                    debugPrint('Navigation Search button is Pressed'),
              ),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 10.0,
              tabs: <Widget>[
                Tab(
                  text: 'aaaa',
                ),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
          ),
        ));
  }
//    return Scaffold(
//      backgroundColor: Colors.grey[100],
//      appBar: AppBar(
//        leading: IconButton(
//          icon: Icon(Icons.menu),
//          onPressed: ()=> debugPrint('Navigation button is Pressed'),
//        ),
//        title: Text('Flutter Demo'),
//        elevation: 0,//bar下面的阴影
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.search),
//            onPressed: ()=> debugPrint('Navigation Search button is Pressed'),
//          ),
//        ],
//      ),
//      body: null,
//    );

}
