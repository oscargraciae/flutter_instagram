import 'package:flutter/material.dart';

class ItemHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage('http://lorempixel.com/800/800/people')
                  )
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                'oscargraciae',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: null,
          )
        ],
      ),
    );
  }
}