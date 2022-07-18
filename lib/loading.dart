import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String name = 'Loading';

  void _get() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/tabs');
    });
  }

  @override
  void initState() {
    super.initState();
    _get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
                height: 80,
                width: 80,
                child: Image(image: AssetImage("assets/images/logo.png"))),
          ),
          Center(child: CircularProgressIndicator(color: Colors.redAccent))
        ],
      ),
    );
  }
}
