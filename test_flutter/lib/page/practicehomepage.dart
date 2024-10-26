import 'package:flutter/material.dart';
import 'package:test_flutter/main.dart';

class PracticeHomePage extends StatelessWidget {
  const PracticeHomePage({super.key});

  // SnackBar(message, context){
  //   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(Text(message), context));
  // }

  showSnackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Flutter"),
        titleSpacing: 40,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        actions: [
          IconButton(
              onPressed: () {
                showSnackBar("Comment page is empity", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                showSnackBar("Search page is empity", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                showSnackBar("Settings page is empity", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                showSnackBar("Notifications page is empity", context);
              },
              icon: Icon(Icons.notifications)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
          elevation: 30,
          backgroundColor: Colors.blue,
          child: Icon(Icons.restart_alt),
          onPressed: () {
            showSnackBar("Restarting", context);
          }
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          backgroundColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: "Contact"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile")
          ]
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(
                              color: Colors.red
                      )
                  ),
                  accountName: Text("Shahriyar Nirjash"),
                  accountEmail: Text("shahriyarnirjash1996@gmal.com"),
                  currentAccountPicture: Image.network("https://photos.google.com/photo/AF1QipM3rTJ2AxudnTaL9y_dPBmWeEyoBtunIjSVvcHZ"),
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home")
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Contact")
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile")
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email")
            )
          ],
        ),
      ),
    );
  }
}
