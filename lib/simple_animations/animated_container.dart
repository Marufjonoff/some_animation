import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:some_animation/widgets/app_widget.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> with SingleTickerProviderStateMixin {
  late final controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));

  double size = 300.0;
  int count = 1;
  bool onTap = false;

  double x = 0;
  double y = 0;
  double z = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "AnimatedContainer"),
      body: Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: (){
                setState((){
                  size = math.Random().nextInt(200).toDouble() + 100;
                  if(onTap) {
                    onTap = !onTap;
                    count = 1;
                  } else {
                    onTap = !onTap;
                    count = -1;
                  }
                });
              },
              child: Stack(
                children: [

                  AnimatedContainer(
                    height: size,
                    width: size,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                          Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                        ]
                      ),
                    ),
                    transform: Matrix4.identity()
                      ..translate(size/2, size/2)
                      ..multiply(Matrix4.rotationZ(-1/2 * math.pi * count))
                      ..translate(-size/2, -size/2),
                  ),

                  AnimatedContainer(
                    height: size,
                    width: size,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                            Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                          ]
                      ),
                    ),
                    transform: Matrix4.identity()
                      ..translate(size/2, size/2)
                      ..multiply(Matrix4.rotationZ(- 3 / 4 * math.pi / count))
                      ..translate(-size/2, -size/2),
                  ),

                  AnimatedContainer(
                    height: size,
                    width: size,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                            Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                          ]
                      ),
                    ),
                    transform: Matrix4.identity()
                      ..translate(size/2, size/2)
                      ..multiply(Matrix4.rotationZ(- 7/4 * math.pi / count))
                      ..translate(-size/2, -size/2),
                  ),

                  AnimatedContainer(
                    height: size,
                    width: size,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                            Color.fromRGBO(math.Random().nextInt(200), math.Random().nextInt(200), math.Random().nextInt(200), 1),
                          ]
                      ),
                    ),
                    transform: Matrix4.identity()
                      ..translate(size/2, size/2)
                      ..multiply(Matrix4.rotationZ(- 5/4 * math.pi / count))
                      ..translate(-size/2, -size/2),
                  ),
                ],
              ),
            ),
          ),
          const Center(child: Text("data", style: TextStyle(color: Colors.white),),)
        ],
      ),
    );
  }
}
