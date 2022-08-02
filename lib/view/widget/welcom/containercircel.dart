import 'package:flutter/material.dart';

double height = 50;
double width = 50;
double height1 = 40;
double width1 = 40;
double height2 = 40;
double width2 = 40;

Color color1 = Colors.white;
Color color2 = Colors.white;
Color color = Colors.white;

class ContainerCircel extends StatefulWidget {
  const ContainerCircel({Key? key}) : super(key: key);

  @override
  _ContainerCircelState createState() => _ContainerCircelState();
}

class _ContainerCircelState extends State<ContainerCircel> {
  BorderRadius borderRadius = BorderRadius.circular(30);
  void Animate() {
    setState(() {
      height = 200;
      width = 200;
      height1 = 80;
      width1 = 80;
      height2 = 80;
      width2 = 80;
      color1 = Colors.red.shade100;
      color2 = Colors.red;
      color = Colors.red.shade200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Animate,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedContainer(
            curve: Curves.ease,
            height: height,
            width: width,
            duration: const Duration(seconds: 1),
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
          Align(
            alignment: const Alignment(0.0, 0.0),
            child: AnimatedContainer(
              curve: Curves.ease,
              height: height - 25,
              width: width - 25,
              duration: const Duration(seconds: 2),
              decoration: BoxDecoration(shape: BoxShape.circle, color: color1),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.0),
            child: AnimatedContainer(
              curve: Curves.ease,
              height: height2 + 66,
              width: width2 + 66,
              duration: const Duration(seconds: 3),
              decoration: BoxDecoration(shape: BoxShape.circle, color: color2),
              child: const Icon(
                Icons.approval,
                color: Colors.white,
                size: 46,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
