import 'package:flutter/material.dart';

class ContainerWithAlignment extends StatefulWidget {
  final double width;
  final double height;
  final AlignmentGeometry? alignment;
  const ContainerWithAlignment({super.key, required this.height, required this.width, this.alignment});

  @override
  State<ContainerWithAlignment> createState() => _ContainerWithAlignmentState();
}

class _ContainerWithAlignmentState extends State<ContainerWithAlignment> {
  @override
  Widget build(BuildContext context) {
      return Container(
      width: widget.width,
      height: widget.height,
      alignment: widget.alignment,
      child: Image.asset('assets/images/neon.png'),
    );
  }
}