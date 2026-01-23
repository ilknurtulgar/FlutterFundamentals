import 'package:flutter/material.dart';

class ContainerWithLayout extends StatefulWidget {
  final double width;
  final double height;
  const ContainerWithLayout({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  State<ContainerWithLayout> createState() => _ContainerWithLayoutState();
}

class _ContainerWithLayoutState extends State<ContainerWithLayout> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          visibility = !visibility;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        color: visibility ? Colors.yellow : null,
        child: visibility ? null : Image.asset('assets/images/neon.png'),
      ),
    );
  }
}
