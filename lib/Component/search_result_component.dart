import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/sizes.dart';

class SearchResultComponent extends StatelessWidget {
  List<String> list = [];
  String label;
  double height;
  int flex;
  SearchResultComponent({this.list, this.label, this.height,this.flex});

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, viewModel, child) => Column(
      mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            padding: EdgeInsets.symmetric(horizontal: Sizes.paddingHorizontally['p4']),
            alignment: Alignment.topLeft,
            child: Text(
              label,
              style: TextStyle(fontSize: Sizes.fontSizes['h9'], fontWeight: FontWeight.bold),
            ),
          ),
    // Container(
    // padding: EdgeInsets.all(15),
    // height: height != null ? height : MediaQuery.of(context).size.height * 0.30,
    Expanded(
      flex: 1,
      child: Padding(
        padding:  EdgeInsets.all(Sizes.paddingHorizontally['p2']),
        child: GridView.builder(
            primary: true,
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
                childAspectRatio: 10 / 3),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  viewModel.navigateToInfoCard(list[index]);
                },
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(Sizes.paddingHorizontally['p5']),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                        border:
                            Border.all(color: Colors.grey.shade900, width: 1)),
                    child: FittedBox(
                        child: Text(
                      list[index],
                      style: TextStyle(fontSize: Sizes.fontSizes['h11'], fontWeight: FontWeight.bold),
                    ))),

              );
            },
          ),
      ),
    ),
        ],
      ),
    );
  }
}



