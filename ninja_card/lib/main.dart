import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: WeatherCard()));
}

class WeatherCard extends StatefulWidget {
  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Weather App"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/me.png"),
                    radius: 40.0
                  ),
                ),
                Divider(
                  height: 90.0,
                  color: Colors.grey[800],
                ),
                Text("NAME",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("Adrine",
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    )),
                SizedBox(
                  height: 30,
                ),
                Text("CURRENT NINJA LEVEL",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text('$ninjaLevel',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    )),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.grey[400]),
                    SizedBox(width: 10),
                    Text("a.uwera@gmail.com",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            letterSpacing:1
                    ))
                  ],
                )
              ]),
        ));
  }
}


