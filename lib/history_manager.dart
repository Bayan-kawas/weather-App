import 'package:shared_preferences/shared_preferences.dart';




class HistoryManager{
  HistoryManager._();
  static final instance =HistoryManager._();
  bool isSeesLandingPage;
  savePref(bool seenLandingPage)async{
    SharedPreferences preferences= await SharedPreferences.getInstance();
    preferences.setBool('seenLandingPage', seenLandingPage);
    print(preferences.getBool('seenLandingPage'));

  }

  getPref()async{
    SharedPreferences preferences= await SharedPreferences.getInstance();
    isSeesLandingPage= preferences.getBool('seenLandingPage');
    print('seenLandingPage is ${isSeesLandingPage}');
    return isSeesLandingPage==null?false:isSeesLandingPage;
  }

}
