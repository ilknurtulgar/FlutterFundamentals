import 'package:flutter/material.dart';

class SpecialButton extends StatefulWidget {
  final Function()? onTap;
  const SpecialButton({super.key, required this.onTap});

  @override
  State<SpecialButton> createState() => _SpecialButtonState();
}

class _SpecialButtonState extends State<SpecialButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red.withOpacity(0.5),
            Colors.red],
            stops: [0.0, 0.5]

          ),
          border: Border.all(color: Colors.blue, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: 0.5,
            image: NetworkImage(
              'https://i.pinimg.com/1200x/46/52/d4/4652d484359ab88d0914b3677ccc5e61.jpg',
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("slm", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
