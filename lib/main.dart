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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 55, 66)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'OASIS'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[     
            Image.asset(
              'assets/imgs/estandarte_oasis.png',
              ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
/* A Flutter implementation of the last frame of the splashscreen animation */
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(36.0),
            child: Image.asset(
              'assets/imgs/logo_oasis.png',
              width: 72.0,
              height: 72.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 3),
          child: Text("Super Splash Screen Demo",
              style: TextStyle(color: Color.fromARGB(137, 255, 0, 0), fontSize: 24)),
        ),
      ],
    );
    return titleSection;
  }
}