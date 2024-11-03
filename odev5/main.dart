import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.pinkAccent.shade100),
        primarySwatch: Colors.pink,
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent.shade100,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.cyan.shade900),
        primarySwatch: Colors.cyan,
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan.shade900,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tema Test", style: TextStyle(color: isDarkTheme ? Colors.cyan.shade100 : Colors.pink.shade900, fontSize: 30),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tema: ${isDarkTheme ? "Karanlık Tema" : "Açık Tema"}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(width: 220, height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isDarkTheme = !isDarkTheme;
                    });
                  }, child: Text("Temayı Değiştir",
                    style: TextStyle(
                        color: isDarkTheme ? Colors.cyan.shade100 : Colors.pink.shade900,
                        fontSize: 21),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}