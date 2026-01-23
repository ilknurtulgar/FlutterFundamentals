import 'package:flutter/material.dart';

class ContainerWithNested extends StatefulWidget {
  final double width;
  final double height;
  final Color firsColor;
  final Color secondColor;
  final Color thirdColor;
  const ContainerWithNested({super.key, required this.width, required this.height, required this.firsColor, required this.secondColor, required this.thirdColor});

  @override
  State<ContainerWithNested> createState() => _ContainerWithNestedState();
}

class _ContainerWithNestedState extends State<ContainerWithNested> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: widget.firsColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: widget.secondColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: widget.thirdColor,),
          ),
        ),
      ),
    );
  }
}