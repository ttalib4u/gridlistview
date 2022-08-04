import 'package:flutter/material.dart';
import 'views/gridview.dart';
import 'views/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid & List View',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'Mulish'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*Directionality(
        textDirection: TextDirection.ltr,
        child:*/ Scaffold(
          appBar: AppBar(
            title: Text('Grid & List'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewPage()));
                  },
                  color: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'ListView',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GridViewPage()));
                  },
                  color: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'GirdView',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        )
    //)
    ;
  }
}