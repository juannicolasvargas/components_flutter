import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina de avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage:  NetworkImage('https://img.vixdata.io/pd/webp-large/es/sites/default/files/r/rip-stan-lee.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('NV')
            ),
          )
        ],
      )
    );
  }
}