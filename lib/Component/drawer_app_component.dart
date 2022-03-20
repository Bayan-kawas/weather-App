import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/ads_manager.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/sizes.dart';

class DrawerAppComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (context, viewModel, child) => Material(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Drawer(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30.h),
                    height: (Sizes.screenWidth) - 100.w,
                    width: (Sizes.screenWidth),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/landing1.png'),
                        ))),
                headerText('Welcome To Weather Now'),
                Padding(
                padding:  EdgeInsets.only(left: Sizes.paddingHorizontally['p2'], top: Sizes.paddingHorizontally['p2']),
                  child: Column(
                    children: [
                      buildMenuItem(
                          text: 'My Home',
                          icon: Icons.home,
                          onTapped: () {
                            viewModel.drawerNavigator(0, context);
                          }),
                      SizedBox(
                        height:Sizes.heightSizeBoxes['boxS5']
                      ),

                      buildMenuItem(
                          text: 'Search',
                          icon: Icons.search,
                          onTapped: () {
                            AdsManager();
                            viewModel.drawerNavigator(1, context);
                          }),
                      SizedBox(
                          height:Sizes.heightSizeBoxes['boxS5']
                      ),
                      buildMenuItem(
                          text: 'My Location',
                          icon: Icons.location_pin,
                          onTapped: () {
                            AdsManager();
                            viewModel.drawerNavigator(2, context);
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildMenuItem({IconData icon, String text, Function onTapped}) {
  return ListTile(
    title: Text(
      text,
      style: TextStyle(
          color: Color(0xff0E4D92),
          fontSize: Sizes.fontSizes['h9'],
          fontWeight: FontWeight.w500),
    ),
    leading: Icon(
      icon,
      size: Sizes.iconsSize['iconS3'],
      color: Color(0xff0E4D92),
    ),
    hoverColor: Colors.blue,
    enabled: true,
    onTap: onTapped,
  );
}

headerText(String header) {
  return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding:
            EdgeInsets.only(left: Sizes.paddingHorizontally['p2'], top: Sizes.paddingHorizontally['p2']),
        child: Text(
          header,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: Sizes.fontSizes['h7'],
            color: Colors.deepPurple.shade800.withOpacity(0.9),
          ),
        ),
      ));
}
