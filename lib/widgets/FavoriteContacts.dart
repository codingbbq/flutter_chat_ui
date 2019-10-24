import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Text("Favorite Contacts"),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: (){},
        )
        ],
      ),
    );
  }
}