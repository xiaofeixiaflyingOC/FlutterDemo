import 'package:flutter/material.dart';
import 'model/post.dart';

class ViewDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 20, color: Colors.redAccent),
        ),
      );
    });
  }

  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return GridView.count(
//        crossAxisCount: 3,
//      crossAxisSpacing: 10,
//      mainAxisSpacing: 16.0,
//      children:_buildTitles(100),
//    );
//    return GridView.extent(
//      maxCrossAxisExtent: 140,//在交叉轴上 最大尺寸
//      crossAxisSpacing: 10,
//      mainAxisSpacing: 16.0,
//      children:_buildTitles(100),
//    );
    return GridView.builder(
      padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:150, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
    );
  }
}

//class ViewDemo extends StatefulWidget{
//@override
//State<StatefulWidget> createState() {
//  return _ViewState();
//}
//}
//
//class _ViewState extends State<ViewDemo>{
//  int _currentPage = 0;
//    Widget _pageItemBuilder(BuildContext context,int index) {
//
//      return Container(
//        color: Colors.blueGrey,
//        alignment: Alignment.center,
//        child: Text(
//          '$index',
//          style: TextStyle(color: Colors.redAccent, fontSize: 60),
//        ),
//      );
//    }
//    @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//      return PageView.builder(
//      itemCount: posts.length,
//      itemBuilder: _pageItemBuilder,
//        scrollDirection: Axis.vertical,
//        onPageChanged: (int index){
//          _currentPage = index;
//          debugPrint('Page: $_currentPage');
//        },
//        controller: PageController(
//        keepPage: true,
//        viewportFraction: 0.85
//        ),
//
//    );
//  }
//}

//class ViewDemo extends StatelessWidget{
//  Widget _pageItemBuilder(BuildContext context,int index){
//    debugPrint('Page: $index');
//    return Container(
//      color: Colors.blueGrey,
//      alignment: Alignment.center,
//      child: Text(
//        '$index',
//        style: TextStyle(color: Colors.redAccent,fontSize: 60),
//        textAlign: TextAlign.center,
//      ),
////      children: <Widget>[
////        SizedBox.expand(
////          child: Image.network(posts[index].imageUrl,fit:BoxFit.cover),
////        ),
////        Positioned(
////          bottom: 8.0,
////          left: 8.0,
////          child: Column(
////            crossAxisAlignment: CrossAxisAlignment.start,
////            mainAxisAlignment: MainAxisAlignment.start,
////            children: <Widget>[
////              Text(
////                posts[index].title
////              )
////            ],
////          ),
////        )
////      ],
//
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return PageView.builder(
//      itemCount: posts.length,
//      itemBuilder: _pageItemBuilder,
//    );
//
//  }

//class PageViewDemo extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return PageView(
////      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
////      controller: PageController(
////        initialPage: 2,
////        keepPage: true,
////        viewportFraction: 0.85
////      ),
//      children: <Widget>[
//        Container(
//          color: Colors.brown[900],
//          alignment: Alignment(0, 0),
//          child: Text(
//            'One',
//            style: TextStyle(fontSize: 32.0, color: Colors.white),
//          ),
//        ),
//        Container(
//          color: Colors.blueGrey[900],
//          alignment: Alignment(0, 0),
//          child: Text(
//            'Two',
//            style: TextStyle(fontSize: 32.0, color: Colors.white),
//          ),
//        ),
//        Container(
//          color: Colors.grey[900],
//          alignment: Alignment(0, 0),
//          child: Text(
//            'Third',
//            style: TextStyle(fontSize: 32.0, color: Colors.white),
//          ),
//        ),
//
//      ],
//    );
//  }
//}
