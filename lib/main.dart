import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("various ListView"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title:Text("item1")
              ,
            )
          ),
          Card(
              child: ListTile(
                title:Text("item2")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item3")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item4")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item5")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item6")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item7")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item8")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item9")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item10")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item11")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item12")
                ,
              )
          ),
          Card(
              child: ListTile(
                title:Text("item13")
                ,
              )
          ),

        ],
        reverse: true,
        /*physics: NeverScrollableScrollPhysics()*/
          addAutomaticKeepAlives: false ,
        cacheExtent: 100.0,
      ),
    );
  }
}
