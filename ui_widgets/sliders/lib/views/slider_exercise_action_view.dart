import 'package:flutter/material.dart';

class SliderExerciseActionView extends StatefulWidget {
  const SliderExerciseActionView({super.key});

  @override
  State<SliderExerciseActionView> createState() =>
      _SliderExerciseActionViewState();
}

class _SliderExerciseActionViewState extends State<SliderExerciseActionView> {
  double _value = 50;
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
                  activeTrackColor: _value > 50 ? Colors.red : Colors.green,
                ),
                child: Slider(
                  value: _value,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              if (_value < 50)
                Image.asset('assets/images/yesil.png'),
              if (_value >= 50) Image.asset('assets/images/kirmizi.png'),
            ],
          ),
        ),
      ),
    );
  }
}
