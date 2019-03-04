import 'package:flutter/material.dart';

void main()=> runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      )
    );
  }
}




class Home extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index){
    if(index.isOdd){
      // 在每一列之前，添加一个1像素高的分隔线widget
      return new Divider(
        height: 1.0,
        color: Color.fromRGBO(166, 165, 245, 1.0),
      );
    }

//    return Text(posts[index].title);
      return Container(
        color: Color.fromRGBO(166, 165, 245, 1.0),
        margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
        height:(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //文字左对齐显示
            Text(
                '测试数据title',
                softWrap: true,//是否自动换行，若为false，文字将不考虑容器大小，单行显示，超出屏幕部分将默认截断处理
                textAlign: TextAlign.left,//左对齐
                overflow: TextOverflow.ellipsis,//超出部分省略号
                maxLines: 1,
                style:TextStyle(
                  fontSize: 16,
                  color:const Color(0xFF000000),
                ),
              ),
            Text(
              '测试数据 context说的发艾弗森的范德萨范德萨发大水发大水fdsafasdfadsfds',
              softWrap: true,
              textAlign: TextAlign.left,//左对齐
              overflow: TextOverflow.ellipsis,//超出部分省略号
              maxLines: 2,
              style:TextStyle(
                fontSize: 14,
                letterSpacing:2,//字母间距
                color:const Color(0xFF000000),
                height: (5+14)/14.0//单行高度=行高系数x字体高度
              ),
            )
          ],
        ),

      );
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Material example',
            style: TextStyle(
              fontSize: 20,
              color:const Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 5,
          backgroundColor: Color.fromRGBO(166, 165, 245, 1.0),
        ),
        body: ListView.builder(
//          itemCount: posts.length,
          itemCount:10,
          itemBuilder: _listItemBuilder,



        ),
      ),
    );
  }

}