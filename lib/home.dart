import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/history.dart';

bool isDark = false;

class Weatherhome extends StatefulWidget {
  Weatherhome({super.key});

  @override
  State<Weatherhome> createState() => _WeatherhomeState();
}

class _WeatherhomeState extends State<Weatherhome> {
  bool isSwitched = isDark;

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
      isDark = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: isDark ? Colors.black : Colors.white, // Update background color here
      appBar: AppBar(
        backgroundColor: isDark ? Color.fromRGBO(42, 46, 46, 1):Color.fromRGBO(201, 221, 242, 1),
        foregroundColor:  Color.fromRGBO(255, 202, 45, 1),
        title: Center(
          child: Text(
            "WeatherApp",
            style: GoogleFonts.poppins(),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(176, 188, 200, 1),
        child: Container(
          color: Color.fromRGBO(176, 188, 200, 1),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                title: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => History(isDark: false,),));
                    },
                    child: Text(
                      "History",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("Assets/Group 1448.png"),
                title: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Dark mode",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: toggleSwitch,
                  activeColor: Colors.blue[200],
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
         decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            isDark ? Colors.black : Color.fromRGBO(173, 209, 243, 1),
           isDark ? Color.fromRGBO(42, 46, 46, 1) : Color.fromRGBO(241, 247, 252, 1),
           isDark ? Color.fromRGBO(42, 46, 46, 1) : Color.fromRGBO(201, 221, 242, 1),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ Text(
                    "IN | Kottakal",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                      ),
                    ),
                  ),
                  Text(
                    "Scattered clouds",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                      ),
                    ),
                  ),],),
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        child: Text(
                          "34°",
                          style: GoogleFonts.quantico(
                            textStyle: TextStyle(
                              color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.cloud,
                      size: 64,
                      color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 237,
                    width: 512,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isDark ? Colors.black : Color.fromRGBO(176, 188, 200, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "Assets/Frame.png",
                                color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                              ),
                              Text(
                                "34\u00B0",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  height: 107,
                                  width: 107,
                                  fit: BoxFit.contain,
                                  "Assets/Group 1428.png",
                                  color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                                ),
                                Text(
                                  "49%",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("Assets/Group 1430.png"),
                              Text(
                                "3 km/h",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Today",
                      style: TextStyle(color: Color.fromRGBO(255, 202, 45, 1),),
                    ),
                  ),
                ),
               Container(
              height: MediaQuery.of(context).size.height * 0.19,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weather.length,
                itemBuilder: (context, index) {
                  final item = weather[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.33,
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isDark ? Colors.black : Color.fromRGBO(176, 188, 200, 1),
                      ),
                      child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  item['time'],
                  style: GoogleFonts.quantico(
                    textStyle: TextStyle(
                      color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      item['degre'],
                      style: GoogleFonts.quantico(
                        color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                      ),
                    ),
                    Icon(
                      Icons.cloud,
                      color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "Assets/Group 1428.png",
                            height: MediaQuery.of(context).size.height * 0.05,
                          color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                        ),
                        Text(
                          item['water'],
                          style: GoogleFonts.quantico(
                            textStyle: TextStyle(
                              color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "Assets/Group 1430.png",
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Text(
                          item['air'],
                          style: GoogleFonts.quantico(
                            textStyle: TextStyle(
                              color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  "Scattered clouds",
                  style: GoogleFonts.quantico(
                    textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),
                    ),
                  ),
                ),
              ],
            ),
                      ),
                    ),
                  );
                },
              ),
            ),
             Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "5 Day Forecast",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color.fromRGBO(255, 202, 45, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  
                  width: 515,
                  decoration: BoxDecoration(
                    color:isDark?Colors.black: Color.fromRGBO(176, 188, 200, 1),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                  ),
                  child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Wed",style:GoogleFonts.quantico(textStyle: TextStyle(color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),))),
                        Text("9 PM",style:GoogleFonts.quantico(textStyle: TextStyle(color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),))),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    child: Image.network("https://cdn-icons-png.flaticon.com/128/892/892300.png"),
                  ),
                  Text("26\u00B0",style:GoogleFonts.quantico(textStyle: TextStyle(color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),fontSize: 50))),
                     Text("26\u00B0",style:GoogleFonts.quantico(textStyle: TextStyle(color: isDark ? Colors.white : Color.fromRGBO(36, 91, 130, 1),fontSize: 25)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> weather = [
    {"time": "09:00AM", "degre": "34\u00B0", "water": "49%", "air": "3km/h"},
    {"time": "12:00PM", "degre": "33\u00B0", "water": "49%", "air": "4km/h"},
    {"time": "04:00PM", "degre": "34\u00B0", "water": "45%", "air": "4km/h"},
    {"time": "07:00PM", "degre": "32\u00B0", "water": "44%", "air": "4km/h"},
    {"time": "09:00PM", "degre": "30\u00B0", "water": "49%", "air": "4km/h"},
  ];
}
