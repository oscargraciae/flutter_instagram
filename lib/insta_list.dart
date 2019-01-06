import 'package:flutter/material.dart';
import 'insta_stories.dart';
import 'package:flutter_instagram/components/item_header.dart';
import 'components/item_content.dart';
import 'components/item_actions.dart';
import 'components/item_likes.dart';
import 'components/item_comments.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var deviceSize =MediaQuery.of(context).size;

    return ListView.builder(
       itemCount: 5,
       itemBuilder: (context, index)=> index == 0 
       ? SizedBox(
         child: InstaStories(index),
         height: deviceSize.height * 0.15,
       )
       : Column(
         mainAxisAlignment: MainAxisAlignment.start,
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
          ItemHeader(),
          ItemContent(),
          ItemActions(),
          ItemLikes(),
          ItemComments(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Hace 1 día',
              style: TextStyle(color: Colors.grey),
            ),
          )
         ],
       ),
    );
  }
}