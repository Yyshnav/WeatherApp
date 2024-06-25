import 'package:flutter/material.dart';
import 'package:weatherapp/history.dart';
import 'package:weatherapp/home.dart';

void main() {
  runApp(const MyApp());
}
double? height;
double? width;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

      height =  MediaQuery.of(context).size.height;
     width =  MediaQuery.of(context).size.width;
    return MaterialApp(
       title: 'Flutter Demo',
      routes: {
       
          '1':(context) => Weatherhome(),
          '2':(context) => History(isDark: false,),
     
      },
          theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins'
      
      ),
      initialRoute: '1',
      // home: Buttons(),
      debugShowCheckedModeBanner: false,
    );
  }
}
