import 'package:dis_man_sym/DisastersScreen.dart';
import 'package:dis_man_sym/rainfallAlert.dart';
import 'package:flutter/material.dart';
import 'DoandDontScreen.dart';
import 'alerts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Disaster Management System",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Dis-Man-Sym",
            style: TextStyle(color: Colors.black),
          ),
<<<<<<< Updated upstream
          backgroundColor: Colors.purple,
          leading: const Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 75),
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DisastersScreen()),
                      );
                    },
                    child: const Text("Disasters",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 100),
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: const Text("Do's & Dont's"),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DoandDontScreen()),
                        );
                      }),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 75),
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => WeatherScreen()),
                      );
                    },
                    child: const Text("Weather info",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 100),
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      child: const Text("Alerts"),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => alerts()),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
=======
          body: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 100, left: 75),
                        height: 100,
                        width: 100,
                        color: Colors.purple,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DisastersScreen()),
                            );
                          },
                          child: const Text("Disasters",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 100, left: 100),
                        height: 100,
                        width: 100,
                        color: Colors.purple,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black)),
                            child: const Text("Do's & Dont's"),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => DoandDontScreen()),
                              );
                            }),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => WeatherScreen()),
                        );
                      },
                      child: Text("weather Info"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                    ),
                  ),

                  Container(
                        height: 100,
                        width: 100,
                        color: Colors.purple,
                        child: TextButton(
                          child: Text("Alerts", style: TextStyle(color: Colors.black),),
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>alerts()))
                             ;
                          },
                        ),
                      ),
                        
                ],
                 
              ),
            ],
          )
          
          ),
>>>>>>> Stashed changes
    );
  }
}
