import 'package:flutter/material.dart';

class SliderExerciseView extends StatefulWidget {
  const SliderExerciseView({super.key});

  @override
  State<SliderExerciseView> createState() => _SliderExerciseViewState();
}

class _SliderExerciseViewState extends State<SliderExerciseView> {
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
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              if( _value < 75)
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
