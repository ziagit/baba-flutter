import 'package:flutter/material.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("افراد تاثیر گزار"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {},
        child: const Icon(Icons.sort),
      ),
    );
  }
}
