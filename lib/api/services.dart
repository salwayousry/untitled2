
import 'dart:convert';

import 'package:untitled3/api/datamodel.dart';
import 'package:http/http.dart'as http;
class DataServices{
  Future<DataModel> getData({required String Product})async{
    Uri url=Uri.parse('http://52.14.136.36/IDevelopAPI/swagger/ui/index#!/BranchesApi/BranchesApi_GettblBranches&q=$Product');
    http.Response response=await http.get(url);
    Map<String,dynamic>data=jsonDecode(response.body);
    DataModel dataModel=DataModel.fromJson(data);
    return dataModel;

  }
}