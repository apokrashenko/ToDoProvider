import 'package:flutter/cupertino.dart';

import 'package:flutter/widgets.dart';

class Data with ChangeNotifier{
  String _data = 'ProviderCheck';

  String get getData => _data;
  
  void changeString(String newString){
    _data = newString;
  
    //Сообщает виджетам перерисоваться!
    notifyListeners();
  }
}