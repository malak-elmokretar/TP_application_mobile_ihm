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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink,
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
  Icon _coeur = Icon(Icons.favorite_border, color: Colors.white,);
  bool _likeBool = false;
  int _selectedIndex = 0;
  String _affichage = "0 : Accueil";

  void _likeThis(){
    setState(() {
      if (_likeBool){
        _coeur = Icon(Icons.favorite_border, color: Colors.white,);
        bool _likeBool = false;
      }
      else {
        _coeur = Icon(Icons.favorite, color: Colors.white,);
        bool _likeBool = true;
      }
    });
  }

  void _itemClique(int index) {
    setState(() {
      _selectedIndex = index;
      switch(_selectedIndex){
        case 0: {
          _affichage = "$_selectedIndex : Accueil";
        }
        case 1: {
          _affichage = "$_selectedIndex : Profil";
        }
        break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(onPressed: _likeThis, icon: _coeur)
        ],
        backgroundColor: Colors.red,
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_affichage),
              Image.asset('assets/images/owl.jpg'),
              Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
            ],
          ),
        ),
        
        floatingActionButton: FloatingActionButton(
        onPressed: _likeThis,
        tooltip: 'Increment',
        backgroundColor: const Color.fromARGB(255, 255, 137, 176),
        child: const Icon(Icons.place),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Accueil"),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: "PROFIL")
              ],
              onTap: _itemClique,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 137, 176),
                    ),
                    child: Text('Menu de navigation'),
                  ),
                  ListTile(
                    title: const Text('Accueil'),
                    selected: _selectedIndex == 0,
                    onTap: () {
                      _itemClique(0);
                    },
                  ),
                  ListTile(
                    title: const Text('Profil'),
                    onTap: () {},
                    ),
                    ],
                    ),
                    )
                    );
                    }}
