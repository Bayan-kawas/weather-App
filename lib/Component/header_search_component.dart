import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_provider.dart';
import '../sizes.dart';

class HeaderSearchComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(builder: (context, viewModel, child) =>    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        autofocus: false,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: Sizes.fontSizes['h9'], color: Colors.white),
        cursorColor: Colors.white,
        textCapitalization: TextCapitalization.sentences,
        controller: viewModel.searchController,
        onChanged: (_) {
          viewModel.fillGrideView();
        },
        onSubmitted: (String value){
          if(viewModel.searchController.text.isNotEmpty &&(
              viewModel.searchListCountry.length>0||viewModel.searchListCity.length>0)&&
              (viewModel.searchListCountry.contains(value)||viewModel.searchListCity.contains(value)))

          viewModel.navigateToInfoCard(value);
        },
        decoration: InputDecoration(
            suffixIcon: (viewModel.searchController.text)
                .toString()
                .isEmpty
                ? null
                : GestureDetector(
              onTap: () {
                viewModel.clearSearchController();
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:
                    Colors.deepPurple.shade800.withOpacity(0.5),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: Sizes.iconsSize['iconS4'],
                  ),
                ),
              ),
            ),
            focusColor: Colors.white,
            hoverColor: Colors.white,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.deepPurple.shade800.withOpacity(0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              const BorderSide(color: Colors.deepPurple, width: 2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2,
                  color: Colors.deepPurple.shade800.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(30),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2,
                  color: Colors.deepPurple.shade800.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(30),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15),
            hintText: 'Search by Country or city',
            hintStyle: TextStyle(
                fontSize: Sizes.fontSizes['h7'],
                color: Colors.deepPurple.shade800.withOpacity(0.5))),
      ),
    ),);
  }
}
