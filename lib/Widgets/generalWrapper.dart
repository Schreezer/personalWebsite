// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal/screens/aboutScreen.dart';

import '../screens/professionalScreen.dart';

class baseLayout extends StatefulWidget {
  String title;
  Widget screen;
  baseLayout({required this.title, required this.screen, Key? key})
      : super(key: key);
  @override
  State<baseLayout> createState() => _baseLayoutState();
}

class _baseLayoutState extends State<baseLayout> {
  void screenChanger(Widget newScreen, String newTitle) {
    setState(() {
      widget.screen = newScreen;
    });
    setState(() {
      widget.title = newTitle;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        // An icon of multiple bars that on click shows the menu from side
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        
        // person icon at the end of the app bar
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.work), // job bag icon
            onPressed: ()=> screenChanger( professionalScreen(), "Professional Life"),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            const SizedBox(
              height: 64.9, // Set your desired height here.
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    'Menu Items',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.mood), // laughing icon
              title: const Text('Failed Products'),
              onTap: ()=> screenChanger(const Placeholder(), "Failed Products"),
            ),
            ListTile(
              leading: const Icon(Icons.sentiment_neutral), // sad face icon
              title: const Text('Useless Projects'),
              onTap: ()=> screenChanger(const Placeholder(), "Useless Projects"),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Anonymous Message'),
              onTap: ()=> screenChanger(const Placeholder(), "Anonymous Message"),
            ),
            ListTile(
              leading: const Icon(Icons.article), // blog icon
              title: const Text('Nonsense Writings'),
              onTap: ()=> screenChanger(const Placeholder(), "Nonsense Writings"),
            ),
            ListTile(
              leading: const Icon(Icons.person), // contact mail icon
              title: const Text('About Me'),
              onTap: ()=>screenChanger(const aboutScreen(), "About Me"),
            ),
          ],
        ),
      ),
      body: SafeArea(child: widget.screen,)
    );
  }
}
