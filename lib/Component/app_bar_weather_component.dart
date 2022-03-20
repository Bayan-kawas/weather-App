import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../sizes.dart';

class AppBarWeatherComponent extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize =>  Size.fromHeight(MediaQuery.of(Get.context).size.height * 0.10);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Color(0xff0E4D92), size: Sizes.iconsSize['iconS2']),
      elevation: 0,
      backgroundColor: Colors.deepPurple.shade800.withOpacity(0.6),
      title: Row(
        children: [
          Icon(
            Icons.wb_cloudy,
            color: Colors.white,
          ),
          SizedBox(
            width: Sizes.widthSizeBox,
          ),
          Text(
            'eather Forecast',
            style: TextStyle(
                color: Colors.white, fontSize:Sizes.fontSizes['h5'], fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
