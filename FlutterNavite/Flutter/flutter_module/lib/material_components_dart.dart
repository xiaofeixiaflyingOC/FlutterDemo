import 'package:flutter/material.dart';
import 'popup_menu_bottom_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponets'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
          ListItem(title: 'Floating', page: FloatingActionButtonDemo()),
          ListItem(title: 'PopupBtn', page: PopupMenu()),
          ListItem(title: 'PopupBtn', page: PopupMenu()),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Widget FlatButtonDemo =  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('FlatBtn'),
          onPressed: () {},
          splashColor: Colors.redAccent,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('FlatBtn'),
          onPressed: () {},
          splashColor: Colors.redAccent,
          textColor: Theme.of(context).accentColor,
        ),


      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButtonDemo
          ],
        ),
      ),
    );
  }
}

class _WigetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
final Widget _floationgActionButton = FloatingActionButton(
    onPressed:(){},
child: Icon(Icons.add),
  elevation: 0.0,
  backgroundColor: Colors.black87,
  shape: BeveledRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
)

final Widget _floatingActionExtend = FloatingActionButton.extended(
onPressed: (){},
  icon:Icon(Icons.add),
  label:Text('Add'),
);

    return Scaffold(
        appBar: AppBar(
      title: Text('FloatingActionButtonDemo'),
      elevation: 0,
    ),
      floatingActionButton: _floatingActionExtend,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
