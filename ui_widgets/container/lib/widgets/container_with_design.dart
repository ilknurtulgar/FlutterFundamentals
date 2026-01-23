import 'package:flutter/material.dart';

class ContainerWithDesign extends StatefulWidget {
  final double width;
  final double height;
  final Color? backgroundColor;
  const ContainerWithDesign({
    super.key,
    required this.width,
    required this.height,
    this.backgroundColor,
  });

  @override
  State<ContainerWithDesign> createState() => _ContainerWithDesignState();
}

class _ContainerWithDesignState extends State<ContainerWithDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.pink, width: 0.5),
      ),
    );
  }
}
