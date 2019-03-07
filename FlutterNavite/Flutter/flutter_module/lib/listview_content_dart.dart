import 'package:flutter/material.dart';
import 'model/post.dart';

class ListViewContentDemo extends StatelessWidget{
  final Post post;
  ListViewContentDemo({
   @required this.post,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
    );
  }
}