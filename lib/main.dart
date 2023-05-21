import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.grey[100],
          // primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              color: Color(0xFFF5F5F5),
              foregroundColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Color(0xFFF5F5F5),
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
              ))),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        title: const Text(
          'itmam97@gmail.com',
          style: TextStyle(fontSize: 15.0),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Title',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Form(
                                  child: Column(
                                    children: [TextFormField()],
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Threshold',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Form(
                                  child: Column(
                                    children: [TextFormField()],
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Date',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Form(
                                child: Column(
                                  children: [TextFormField()],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Done');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(335, 46),
                                        backgroundColor: Colors.black),
                                    child: const Text('Done'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: Column(
                  children: const <Widget>[
                    Text('1 Service Yet',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35.0)),
                    Text('See Mainenance Detail >',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {},
                      child: const SizedBox(
                        width: 107.0,
                        height: 30.0,
                        child: Center(child: Text('All')),
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {},
                      child: const SizedBox(
                        width: 107.0,
                        height: 30.0,
                        child: Center(child: Text('Uncompleted')),
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      onTap: () {},
                      child: const SizedBox(
                        width: 107.0,
                        height: 30.0,
                        child: Center(child: Text('Completed')),
                      ),
                    ),
                  )
                ],
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('5 May 2023'),
                  trailing: Icon(
                    Icons.check_circle,
                  ),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Tukar Minyak Hitam'),
                  subtitle: Text('3 February 2023'),
                  trailing: Icon(Icons.check_circle),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
