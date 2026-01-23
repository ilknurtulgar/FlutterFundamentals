import 'package:flutter/material.dart';

class SwitchView extends StatefulWidget {
  const SwitchView({super.key});

  @override
  State<SwitchView> createState() => _SwitchViewState();
}

class _SwitchViewState extends State<SwitchView> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: light ? Colors.green : Colors.red,
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Switch(value: light,activeThumbColor: Colors.black, inactiveThumbColor: Colors.black ,activeTrackColor: Colors.red, inactiveTrackColor: Colors.green, onChanged: (value){
            setState(() {
              light = value;
            });
            
          })
        
        ],),
      ),
    ));
  }
}
