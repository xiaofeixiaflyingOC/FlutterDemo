import 'package:flutter/material.dart';

class BaseControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0 ,color:Colors.white),
            color: Color.fromRGBO(3, 54, 255, 1.0),
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(16.0),//修改的子控件child 在父控件上的内边距。
            width: 90,
            height: 90,
          )
        ],
      ),
    );
  }
}

//class BaseControl extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Container(
////      color: Colors.grey[100],
//      decoration: BoxDecoration(
//          image: DecorationImage(
//              image: NetworkImage(
//                  'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg'),
//              alignment: Alignment.topCenter,
//              repeat: ImageRepeat.noRepeat,
//              fit: BoxFit.fitWidth,
//              colorFilter: ColorFilter.mode(
//                Colors.indigoAccent[400].withOpacity(0.5), //滤镜颜色
//                BlendMode.hardLight, //混合模式
//              ))),
//      child:
//          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//        Container(
//            child: Icon(Icons.poll, size: 32.0, color: Colors.white),
//            padding: EdgeInsets.all(16.0),
//            margin: EdgeInsets.all(8.0),
//            width: 90,
//            height: 90,
//            decoration: BoxDecoration(
//                color: Color.fromRGBO(3, 54, 255, 1.0),
//                shape: BoxShape.circle,
////                gradient: RadialGradient(
////                  colors: [
////                    Color.fromRGBO(7, 102, 255, 1.0),
////                    Color.fromRGBO(3, 28, 128, 1.0),
////                  ],
////                )))
//            //线性颜色渐变
//                gradient: LinearGradient(colors: [
//                  Color.fromRGBO(7, 102, 255, 1.0),
//                  Color.fromRGBO(3, 28, 128, 1.0),
//                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
//            boxShadow: [
//              BoxShadow(
//                offset: Offset(4.0, 25.0),
//                color: Color.fromRGBO(16, 20, 188, 1.0),
//                blurRadius: 25.0,//模糊程度，值越大越明显
//                spreadRadius: -9.0//扩散程度
//              )
//            ],
//            ))
//
//
//      ]),
//    );
//  }
//}
