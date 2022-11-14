import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dafaults/defaults.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

var indexClicked = 0;

class _MainPageState extends State<MainPage> {
  final pages = [
    Center(
      child: Text("Inbox"),
    ),
    Center(
      child: Text("stared"),
    ),
    Center(
      child: Text("sent"),
    ),
    Center(
      child: Text("Draft"),
    ),
    Center(
      child: Text("Trash"),
    ),
    Center(
      child: Text("spam"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: pages[indexClicked],
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/drawer.jpg'),
                      fit: BoxFit.fill)),
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/images/profile.jpg',
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        indexClicked = 0;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Defaults.drawerItemIcon[0],
                      size: 35,
                      color: indexClicked == 0
                          ? Defaults.drawerItemSelectedColor
                          : Defaults.drawerItemColor,
                    ),
                    title: Text(
                      Defaults.drawerItemText[0],
                      style: GoogleFonts.sanchez(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: indexClicked == 0
                            ? Defaults.drawerItemSelectedColor
                            : Defaults.drawerItemColor,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile({
    Key? key,
    required this.index,
  }) : super(key: key);
    final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Defaults.drawerItemIcon[1],
        size: 35,
        color: indexClicked == 1
            ? Defaults.drawerItemSelectedColor
            : Defaults.drawerItemColor,
      ),
      title: Text(
        Defaults.drawerItemText[1],
        style: GoogleFonts.sanchez(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: indexClicked == 1
              ? Defaults.drawerItemSelectedColor
              : Defaults.drawerItemColor,
        ),
      ),
    );
  }
}
