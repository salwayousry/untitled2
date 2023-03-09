import 'package:flutter/cupertino.dart';
import 'package:untitled3/api/datamodel.dart';

class DataProvider extends ChangeNotifier{
 DataModel? _Datamodel;

  String?Product;
  set Data(DataModel?dataModel){
    _Datamodel=dataModel;
    notifyListeners();
  }
 DataModel?get Data=>_Datamodel;
}

