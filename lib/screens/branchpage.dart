import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:provider/provider.dart';
import 'package:untitled3/api/datamodel.dart';
import 'package:untitled3/api/providermodel.dart';

import '../api/services.dart';
class Branchpage extends StatefulWidget{
  static String routeName='Branchpage';

  String? Product;

  @override
  State<Branchpage> createState() => _BranchpageState();
}

class _BranchpageState extends State<Branchpage> {
  String? Product;
  void UpdateUi(){
    setState((){});
  }
  @override
  Widget build(BuildContext context) {

    Provider.of<DataProvider>(context).Data;
    TableRow _tableRow= TableRow(
      children: [
        Padding(padding: EdgeInsets.all(10.0),
        child: Text('${Provider.of<DataProvider>(context).Data!.ID.toInt()}'),),Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.EnglishName.toString()}'),),Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.ArabicName.toString()}'),),Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.ShortName.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.Telephone1.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.Telephone2.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.Telephone3.toString()}'),), Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.TaxNo.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.LogoUrl.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.Description.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.CostCenterID.toInt()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.BrandID.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.Address.toString()}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.IsShowRoom}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.Active}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.IsFactory}'),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Text('${Provider.of<DataProvider>(context).Data!.Deleted}'),),


      ]
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text('Branch',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),),
        ),
      ),body: Column(
      children: [
        SizedBox(height: 70,),
        Container(
          color: Colors.deepPurple,
          child: TextField(
            onSubmitted: (Data)async{
             Product=Data;
            DataServices service=DataServices();

    DataModel? data=await service.getData(Product: Data);
    Provider.of<DataProvider>(context,listen: false).Data=data;
    Provider.of<DataProvider>(context,listen: false).Product=Product;

             },
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search',
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade400),
                prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none


                )
            ),
          ),

        ),SizedBox(height: 70,),
        Center(
          child: Table(
            border: TableBorder.all(),
            defaultColumnWidth: FixedColumnWidth(90.0),
            children: [
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow,
              _tableRow
            ],
          ),
        ),
      ],
    )
    );
  }
}