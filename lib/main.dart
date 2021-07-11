import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen.shade300,
          title: Text(
            'Main View',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w700,
              fontSize: 28.0,
              color: Colors.grey.shade700,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'App Settings',
              color: Colors.grey.shade900,
              iconSize: 40.0,
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        backgroundColor: Colors.lightGreen[100],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.blue,
                        ),
                        child: Text('image placeholder'),
                        width: 280.0,
                        height: 280.0,
                      ),
                      Positioned(
                        bottom: -20,
                        right: -20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.yellow,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'pet name placeholder',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                            ),
                          ),
                          width: 200.0,
                          height: 40.0,
                          //color: Colors.yellow,
                        ),
                      ),
                      Positioned(
                        top: -20,
                        right: -40,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.pets,
                            size: 80.0,
                          ),
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                    ],
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
