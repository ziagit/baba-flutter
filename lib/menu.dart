import 'package:flutter/material.dart';
import 'package:babah/pages/about.dart';
import 'package:babah/pages/donate.dart';
import 'package:babah/pages/settings.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.redAccent),
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: const Center(
              child: SizedBox(
                width: 80.0,
                height: 100.0,
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: const Icon(Icons.library_books),
                title: const Text("About"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text("Donate"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Donate()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
