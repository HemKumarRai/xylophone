import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Playsound(int i) {
    final player = AudioCache();
    player.play("note$i.wav");
  }

  Widget builtkey({
    Color color,
    int i,
  }) {
    return Expanded(
      flex: 0,
      child: FlatButton(
        color: color,
        onPressed: () {
          Playsound(i);
        },
        child: Text(
          "Clic Here",
          style: TextStyle(
            fontSize: 60.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 90,
                color: Colors.grey,
                child: FlatButton(
                  onPressed: () {
                    Playsound(1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 45,
                        child: Text("note1"),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 90,
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        Playsound(2);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.music_note,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              builtkey(
                color: Colors.brown,
                i: 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 90,
                    child: FlatButton(
                      color: Colors.black87,
                      onPressed: () {
                        Playsound(4);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 45,
                            child: Text("note4"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 90.0,
                    child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        Playsound(5);
                      },
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                          fontSize: 60.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 90,
                    child: FlatButton(
                      color: Colors.white,
                      onPressed: () {
                        Playsound(6);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black87,
                            radius: 45,
                            child: Text("note6"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 90,
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        Playsound(7);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.purpleAccent,
                            radius: 45,
                            child: Text("note7"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
