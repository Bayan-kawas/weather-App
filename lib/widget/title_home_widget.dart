import 'package:flutter/cupertino.dart';

import '../sizes.dart';

class TitleHomeWidget extends StatelessWidget {
 final String title;
 final FontWeight fontWeight;
 final double fontSize;
   TitleHomeWidget({Key key,this.title,this.fontWeight,this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(height: scaleHeight(context)*0.04,
      child: Container(height: scaleHeight(context)*0.02 ,
        padding: const EdgeInsets.symmetric(horizontal: 15,),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontWeight: fontWeight,
              color: Color(0xff0E4D92),
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
