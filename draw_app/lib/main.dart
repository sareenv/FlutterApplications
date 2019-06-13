import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("SideBar"),
          backgroundColor: Colors.purple.shade400,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){},)
          ],

        ),
        drawer: Drawer(
          
          child: ListView(

            padding: EdgeInsets.all(0),
            shrinkWrap: true,

            children: <Widget>[
              DrawerHeader(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Image.network("https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=format%2Ccompress&cs=tinysrgb&dpr=1&w=500",
                    fit: BoxFit.fill,
                  ),

                ),
                decoration: BoxDecoration(
                  color: Colors.red
                ),
              ),
              new listItemTitle(option_name: Text("Categories"), option: (){
                print("Hello from flutter team");
              },),
              new listItemTitle(option_name: Text("My Account"), option: (){
              },),

              new listItemTitle(option_name: Text("My Orders"), option: (){},),

              new listItemTitle(option_name: Text("Notifications"), option: (){},),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class listItemTitle extends StatelessWidget {
  final Text option_name;
  final Function option;

  listItemTitle({@required this.option_name, this.option});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: option_name,
      onTap: option,
    );
  }
}
