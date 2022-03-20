import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/sizes.dart';
import 'package:weather_app/provider/weather_provider.dart';

class ContinentsCardComponent extends StatelessWidget {
  int continentIndex;
  ContinentsCardComponent(this.continentIndex);
  Widget buildDetailsContinents({number,label}){
    return Row(mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //weatherProvider.continents[continentIndex]

        Text(
          number,
          style: TextStyle(
              color: Colors.white,
              fontSize: Sizes.fontSizes['h2'],
              fontWeight: FontWeight.w400
          ),
        ),
        Text(
          label,
          style: TextStyle(
              color: Color(0xff0E4D92),
              fontSize: Sizes.fontSizes['h6'],
              fontWeight: FontWeight.w400
          ),
        ),
        //Icon(Icons.search,color: Color(0xff0E4D92),)


      ],
    );

  }


  @override
  Widget build(BuildContext context) {

    return  Consumer<WeatherProvider>(builder: (context, viewModel, child) =>
       InkWell(
        onTap: () {
          viewModel.onPressedContinents(ContinenList:viewModel.continents,
              ContinenIndex:continentIndex );


        },
        child: Container(
          width: scaleWidth(context),
          height: scaleHeight(context) *0.22,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.buttonRadius['r3']),color:  Colors.deepPurple.shade800.withOpacity(0.5),
            //image: DecorationImage(image: AssetImage('assets/images/containerBack.jpg'), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 1.0,
                offset:
                Offset(3.0, 3.0), // shadow direction: bottom right
              )
            ],
          ),
          child: Column(mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search,color: Color(0xff0E4D92),size: Sizes.iconsSize['iconS1'],),

                  Text(
                    " ${viewModel.continents[continentIndex].name}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizes.fontSizes['h3'],
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),


              Row(mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //weatherProvider.continents[continentIndex]

                  buildDetailsContinents(label: " Country ",number:viewModel.continents[continentIndex].countryList.length.toString() ),

                  buildDetailsContinents(label: " City ",number:viewModel.getNumberOfCityInContinents(viewModel.continents[continentIndex]) ),

                ],
              ),




              Icon(viewModel.continents[continentIndex].continentOpened?Icons.arrow_drop_up:
                Icons.arrow_drop_down_sharp,
                size: Sizes.iconsSize['iconS1'],
                color: Colors.white,//Color(0xff0E4D92),
              ),


            ],
          ), // child widget, replace with your own
        ),
      ),
    );
  }
}
