import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  const Donate({Key? key}) : super(key: key);
  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Donate"),
        backgroundColor: Colors.redAccent,
        elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("کمک و همکاری "),
      ),
    );
  }
}
