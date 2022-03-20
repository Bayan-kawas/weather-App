import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/start_point_provider.dart';

class StartPoint extends StatefulWidget {
  @override
  State<StartPoint> createState() => _StartPointState();
}

class _StartPointState extends State<StartPoint> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StartPointProvider(context),
      child: Consumer<StartPointProvider>(builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/back.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Center(child: CircularProgressIndicator())),
          ),
        );
      }),
    );
  }
}
