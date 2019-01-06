import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  int indexItem = 0;

  InstaStories(this.indexItem);

  @override
  Widget build(BuildContext context) {
    final topText = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Stories', style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: <Widget>[
            Icon(Icons.play_arrow),
            Text('Whatch All', style: TextStyle(fontWeight: FontWeight.bold))
          ],
        )
      ],
    );

    final stories = Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index)=> Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange,
                  width: 1,
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://randomuser.me/api/portraits/men/${(index+1)}.jpg')
                )
              ),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            index == 0
            ? Positioned(
              right: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child: Icon(
                  Icons.add,
                  size: 14.0,
                  color: Colors.white,
                ),
              ),
            )
            : Container()
          ],
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}