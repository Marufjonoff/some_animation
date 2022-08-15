import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:some_animation/simple_animations/animated_container.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final animationName = [
    'AnimatedContainer',
  ];

  List<Widget> pageName = const [
    AnimatedContainerPage(),
  ];

  void navigatePage(Widget page, BuildContext context) {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => page));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations"),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        physics: const BouncingScrollPhysics(),
        itemCount: animationName.length,
        itemBuilder: (context, index) {
          return MaterialButton(
            onPressed: () => navigatePage(pageName[index], context),
            minWidth: double.infinity,
            height: 50,
            color: Colors.indigoAccent,
            shape: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.indigoAccent,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(animationName[index], style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),),
          );
        },
      ),
    );
  }
}
