import 'package:flutter/material.dart';

class SliderExerciseDivView extends StatefulWidget {
  const SliderExerciseDivView({super.key});

  @override
  State<SliderExerciseDivView> createState() => _SliderExerciseDivViewState();
}

class _SliderExerciseDivViewState extends State<SliderExerciseDivView> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Colors.grey,
                  thumbColor: Colors.blue,
                  activeTrackColor: _value > 75 ? Colors.red : Colors.green,
                ),
                child: Slider(
                  value: _value,
                  divisions: 100,
                  label: _value.round().toString(),
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              if(_value >= 0 && _value < 75)
                  Image.asset('assets/images/yesil.png',),
              if(_value >= 75)
                Image.asset('assets/images/kirmizi.png')
              
            ],
          ),
        ),
      ),
    );
  }
}