import 'package:flutter/material.dart';

class ContainerWithSize extends StatefulWidget {
  final double width;
  final double height;
  const ContainerWithSize({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  State<ContainerWithSize> createState() => _ContainerWithSizeState();
}

class _ContainerWithSizeState extends State<ContainerWithSize> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Image.asset('assets/images/neon.png'),
    );
  }
}
