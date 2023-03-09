import 'package:flutter/material.dart';
import 'package:untitled3/screens/branchpage.dart';

class Homepage extends StatelessWidget{
  static String routeName='Homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text('Homepage',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),),
        ),
      ),body: Container(
      child: Column(
        children: [

          Expanded(
              flex: 1,
              child: Center(child: Image.network('https://th.bing.com/th/id/OIP.emAMk68eeBdgL19qB2DWkAHaHa?pid=ImgDet&w=201&h=201&c=7&dpr=1.3'))
          ),
          Expanded(flex: 3,
              child: Column(
                children: [
                  Divider(color: Colors.deepPurple,thickness: 3,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Branchpage.routeName);
                    },
                      child: Text('Branchpage',style: Theme.of(context).textTheme.subtitle1,)),
                  Divider(color: Colors.deepPurple,thickness: 3,),
                  Text('Itemspage',style: Theme.of(context).textTheme.subtitle1,),
                  Divider(color: Colors.deepPurple,thickness: 3,),
                  Text('Customerpage',style: Theme.of(context).textTheme.subtitle1,),
                  Divider(color: Colors.deepPurple,thickness: 3,),
                  Text('Searchpage',style: Theme.of(context).textTheme.subtitle1,),
                  Divider(color: Colors.deepPurple,thickness: 3,),


                ],
              ))
        ],
      ),
    ),
    );
  }

}