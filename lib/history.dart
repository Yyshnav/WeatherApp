import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:weatherapp/home.dart';
import 'package:weatherapp/history.dart';


class History extends StatefulWidget {
   History({super.key, required bool isDark});


  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ?Color.fromRGBO(42, 46, 46, 1): Colors.white ,
     
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(153),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            foregroundColor:  Color.fromRGBO(255, 202, 45, 1),
             backgroundColor:isDark?Color.fromRGBO(42, 46, 46, 1): Color.fromRGBO(176, 188, 200, 1),
          
            title: Center(child: Text("History",style: GoogleFonts.poppins(),)),
          ),
        ),
      ),
      body: Container(
         decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            isDark ? Color.fromRGBO(42, 46, 46, 1): Color.fromRGBO(213, 230, 246, 1),
          isDark ? Color.fromRGBO(42, 46, 46, 1):  Color.fromRGBO(241, 247, 252, 1),
           isDark ? Color.fromRGBO(42, 46, 46, 1): Color.fromRGBO(201, 221, 242, 1),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topCenter,
        ),
      ),
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:isDark?  Colors.black:Color.fromRGBO(176, 188, 200, 1),
              ),
              child:  ListTile(
              leading: Text("Wednesday",style:GoogleFonts.poppins(textStyle: TextStyle(color:  isDark?Colors.white : Color.fromRGBO(36, 91, 130, 1)))),
              minLeadingWidth: 130,
              title: Text("India",style:GoogleFonts.poppins(textStyle: TextStyle(color:  isDark?Colors.white : Color.fromRGBO(36, 91, 130, 1)))),
              trailing: Text("8:37AM",style:GoogleFonts.poppins(textStyle: TextStyle(color:  isDark?Colors.white : Color.fromRGBO(36, 91, 130, 1)))),
                      ),
            ),
          );
        
        },itemCount: 6,),
      ),
    );
  }
}