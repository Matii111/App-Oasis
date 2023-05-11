import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oasis demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(1, 100, 103, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
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

  final ButtonStyle myButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(1, 100, 103, 1)),
    foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 255, 255, 255)),
    elevation: MaterialStateProperty.all<double>(8),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 10, horizontal: 60),    
  ),   
);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
        children: [
          Image.asset(
            'assets/imgs/logo_oasis.png',
            width: 200,
            height: 200,
          ),
         ElevatedButton(
          onPressed: () {
            // Acción del tercer botón
          },
          style: myButtonStyle,
          child: const Text('     ESTADO DE SALUD     '),
        ),
        const SizedBox(height: 8), 
         ElevatedButton(
          onPressed: () {
            // Acción del tercer botón
          },
          style: myButtonStyle,
          child: const Text('LISTADO DE EJERCICIOS'),
        ),
        const SizedBox(height: 8), 
         ElevatedButton(
          onPressed: () {
            // Acción del tercer botón
          },          
          style: myButtonStyle,
          child: const Text('           ASISTENCIA           '),
        ),
        ],
      )
      ),
      
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
              style: TextStyle(
                  color: Color.fromRGBO(1, 99, 103, 0), fontSize: 24)),
        ),
      ],
    );
    return titleSection;
  }
}
