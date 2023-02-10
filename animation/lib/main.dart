import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _showFirst = true;
  var _color = Colors.red;
  var _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Center(child : Column(
        mainAxisAlignment : MainAxisAlignment.center,
        children : [
          AnimatedCrossFade(
            duration : Duration(seconds : 2),
            firstChild : FlutterLogo(
              style : FlutterLogoStyle.horizontal,
              size : 100.0
            ),
            secondChild : FlutterLogo(
              style : FlutterLogoStyle.stacked,
              size : 100.0
            ),
            crossFadeState : _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          ElevatedButton(
              child : Text("Cross-Fade!"),
              onPressed : () {
                _showFirst = false;
                setState(() {});
              }
          ),
          SizedBox(
            height: 20,
          ),
          AnimatedDefaultTextStyle(
              duration : const Duration(seconds : 1),
              style : TextStyle(
                  color : _color, fontSize : _fontSize
              ),
              child : Text("I am some text")
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              child : Text("Enhance! Enhance! Enhance!"),
              onPressed : () {
                _color = Colors.blue;
                _fontSize = 40.0;
                setState(() {});
              }
          ),
          SizedBox(
            height: 20,
          ),
          DragTarget(
              builder : ( BuildContext context, accepted, rejected) {
                  return new Container(width : 120, height : 120,
                      color : Colors.lightBlue);
                },
              onAccept : (data) => print(data)
          ),
          SizedBox(
            height: 20,
          ),
          Draggable(
              data : "I was dragged",
              child : Container(width : 100, height : 100,
                  color : Colors.red),
              feedback : Container(width : 100, height : 100,
                  color : Colors.yellow)
          ),
        ]
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
