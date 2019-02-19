import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animated Container',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height = 175.0;
  var width = 150.0;
  var shape = BoxShape.rectangle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                AnimatedContainer(
                  duration: Duration(seconds: 2),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        height = MediaQuery.of(context).size.height;
                        width = MediaQuery.of(context).size.width;
                        shape = BoxShape.rectangle;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(50.0),
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                          shape: shape,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/image1.jpg"),
                          )),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
