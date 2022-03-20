import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_provider.dart';

import '../sizes.dart';

class CustomCard extends StatelessWidget {
  String name;
  Color color;
  bool isOpened;

  CustomCard({this.name, this.color,this.isOpened});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: customWidth(context, 0.26),height: customHeight(context, 0.12),

        child: Card(
          color: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: TextStyle(
                    color:isOpened?Color(0xff0E4D92):Colors.white,//Color(0xff0E4D92),
                    fontSize: name.length > 10?Sizes.fontSizes['h12']:Sizes.fontSizes['h11'],
                  ),
                  overflow: name.length > 10?TextOverflow.ellipsis:TextOverflow.clip,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Icon(
                isOpened?Icons.arrow_drop_up:Icons.arrow_drop_down_sharp,
                size: 30,
                color: isOpened?Color(0xff0E4D92):Colors.white,//Color(0xff0E4D92),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
