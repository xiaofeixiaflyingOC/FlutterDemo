import 'package:flutter/material.dart';
import 'post.dart';
import 'package:flutter_module/listview_content_dart.dart';
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
          Positioned.fill(
              child:Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor:  Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> ListViewContentDemo(post:posts[index]))
                    );
                  },
                ),
              )
          )


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
