import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/api/datamodel.dart';
import 'package:untitled3/api/providermodel.dart';
import 'package:untitled3/login/login.dart';
import 'package:untitled3/screens/branchpage.dart';
import 'package:untitled3/screens/homepage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  DataModel?_dataModel;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return DataProvider();
      },
    child: MaterialApp(
      title: 'myapp',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Login.routeName,
      routes: {
        Login.routeName:(context)=>Login(),
        Homepage.routeName:(context)=>Homepage(),
        Branchpage.routeName:(context)=>Branchpage()

      },
    ));
  }
}


