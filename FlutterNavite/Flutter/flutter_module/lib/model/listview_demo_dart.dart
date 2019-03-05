import 'package:flutter/material.dart';
import 'post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBulider(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(posts[index].imageUrl,
                    fit: BoxFit.cover),
              ),
              SizedBox(height: 10.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 10.0),
              Text(posts[index].author,
                  style: Theme.of(context).textTheme.subhead),
              SizedBox(height: 16.0),
            ],
          ),
        ],
      ),
    );
  }
  @override
   Widget build(BuildContext context){
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBulider,
    );
  }
}
