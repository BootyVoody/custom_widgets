import 'package:flutter/material.dart';
import 'mentor.dart';

class MentorListItem extends StatelessWidget {
  final Mentor mentor;

  MentorListItem(this.mentor);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 24.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            width: 3.0, 
            color: Colors.white
          ),
          image: DecorationImage(
            image: AssetImage(mentor.assetPath),
            fit: BoxFit.fill,
          ),
        ),
        height: 92.0,
        width: 92.0,
      ),
    );

    final info = Container(
      margin: EdgeInsets.only(
        left: 72.0, 
        right: 24.0
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54, 
            blurRadius: 5.0, 
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 16.0, 
          left: 72.0
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              mentor.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              mentor.company,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 20.0,
                  color: Colors.white,
                ),
                Text(
                  mentor.location,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.language,
                  size: 20.0,
                  color: Colors.white,
                ),
                Text(
                  mentor.language,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

    return Container(
      height: 120,
      margin: EdgeInsets.only(
        top: 16, 
        bottom: 8
      ),
      child: Stack(
        children: [
          info,
          photo,
        ],
      ),
    );
  }
}
