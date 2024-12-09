import 'package:flutter/material.dart';
import 'dart:io' show Platform;

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
                      )
                    ],
                  )
              ],
            )
          ]
        ),
        Image.asset("Assets/Images/pavlova.png")
      ]
    )
          // ]
        )
      );
    // );
  }
  }















              //       Text("Pavlova aux fraises", style: Theme.of(context).textTheme.headlineLarge),
              //       ]
              //   ),
              //   Column(
              //     children: <Widget>[
              //       Text(
              //         "La pavlova est un dessert à base de meringue qui doit son nom à la ballerine russe Anna Pavlova. La Pavlova se caractérise par une croûte croustillante et un intérieur moelleux et léger, garni de fruit et de crème fouettée",
              //         style: Theme.of(context).textTheme.bodyMedium
              //         ),
              //         ]
              //   ),
              //   Column(
              //     children: <Widget>[
              //       Row (
              //         children: [
              //           Text("404 Notes", style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.right,)
              //         ]
              //       ),
              //       Row(
              //         children: [
              //           Image.asset("Assets/images/star.png"),
              //           Image.asset("Assets/images/star.png"),
              //           Image.asset("Assets/images/star.png"),
              //           Image.asset("Assets/images/star.png"),
              //           Image.asset("Assets/images/star.png")
              //         ],
              //       )
              //     ]
              //   ),
              //   Column(
              //     children: <Widget>[
              //       Row(
              //       children: [
              //         Column(
              //           children: <Widget>[
              //             const Icon(Icons.kitchen),
              //           ],
              //         ),
              //          Column(
              //           children: <Widget>[
              //             Text("Préparation"),
              //           ],
              //         ),
              //          Column(
              //           children: <Widget>[
              //             Text("25 minutes"),
              //           ],
              //         ),
              //       ],
              //       ),
              //        Row(
              //       children: <Widget>[
              //         Column(
              //           children: <Widget>[
              //             const Icon(Icons.restaurant),
              //           ],
              //         ),
              //          Column(
              //           children: <Widget>[
              //             Text("Cuisson"),
              //           ],
              //         ),
              //          Column(
              //           children: <Widget>[
              //             Text("1 heure"),
              //           ],
              //         ),
              //       ],
              //       ),
              //        Row(
              //       children: <Widget>[
              //         Column(
              //           children: <Widget>[
              //             const Icon(Icons.timer_sharp),
              //           ],
              //         ),
              //          Column(
              //           children: <Widget>[
              //             Text("Nombre de personnes"),
              //           ],
              //         ),
              //          Column(
              //           children: <Widget>[
              //             Text("Entre 4 et 6"),
              //           ],
              //         ),
              //       ],
              //       ),
              //     ]
              //   ),
              //     ],
              // ),
              // Column (
              //   children: <Widget>[
              //     Image.asset("Assets/Images/pavlova.png")
              //   ],
              // ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
