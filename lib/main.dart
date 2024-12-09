import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'nouvellepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Text("Pavlova aux fraises", style: Theme.of(context).textTheme.headlineLarge)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "La pavlova est un dessert à base de meringue qui doit son nom à la ballerine russe Anna Pavlova. La Pavlova se caractérise par une croûte croustillante et un intérieur moelleux et léger, garni de fruit et de crème fouettée",
                          style: Theme.of(context).textTheme.bodyMedium
                          )
                      ]
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image.asset("Assets/images/star.png", height: 50, width: 50)
                                ]
                            ),

                            Column(
                              children: <Widget>[
                                Image.asset("Assets/images/star.png", height: 50, width: 50)
                              ],
                            ),

                          Column(
                            children: <Widget>[
                              Image.asset("Assets/images/star.png", height: 50, width: 50)
                            ],
                          ),
                          
                          Column(
                            children: <Widget>[
                              Image.asset("Assets/images/star.png", height: 50, width: 50)
                            ],
                          ),
                          
                          Column(
                            children: <Widget>[
                              Image.asset("Assets/images/star.png", height: 50, width: 50)
                            ]
                          )
                        ]
                      ),
                      Row(
                        children: <Widget>[
                          Text("404 Notes", style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.right,)
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              const Icon(Icons.kitchen)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const Text("Préparation")
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const Text("25 minutes")
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: [
                              const Icon(Icons.restaurant)
                            ]
                          ),
                          Row(
                            children: <Widget>[
                              const Text("Cuisson")
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const Text("1 heure")
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: [
                              const Icon(Icons.restaurant)
                            ]
                          ),
                          Row(
                            children: <Widget>[
                              const Text("Nombre personnes")
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const Text("4 à 6")
                            ],
                          ),
                        ],
                      )
                    ],
                  )
              ],
            )
          ]
        ),
        Image.asset("Assets/Images/pavlova.png"),
        Column(
            children: <Widget>[
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Écran n°1"),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Appuyer sur ce bouton pour passer à l'écran suivant"),
                  ]
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => MySecondPage(title : (widget.title)))
                    );
                  },
                  child: const Text("Suivant"),
                  )
                ]
              ),
            ]
          )
            ]
          )
      ]
    )
        )
      );
  }
}
