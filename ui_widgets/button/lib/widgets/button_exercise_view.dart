import 'package:audioplayers/audioplayers.dart';
import 'package:button/widgets/action_button.dart';
import 'package:button/view/special_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonExerciseView extends StatefulWidget {
  const ButtonExerciseView({super.key});

  @override
  State<ButtonExerciseView> createState() => _ButtonExerciseViewState();
}

class _ButtonExerciseViewState extends State<ButtonExerciseView>
    with SingleTickerProviderStateMixin {
  String choose = 'çay';
  bool isAction = false;
  bool isOpen = false;
  bool isAction2 = false;
  late AnimationController _controller;
  late final Animation<double> _animation;
  late final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 12,
    ).chain(CurveTween(curve: Curves.bounceIn)).animate(_controller);
  }

  void shake() {
    _controller.forward(from: 0);
  }

  void playSound() {
    _player.play(AssetSource('sounds/shake.mp3'));
  }

  @override
  void dispose() {
    _controller.dispose();
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              DropdownButton<String>(
                items: const [
                  DropdownMenuItem(value: 'çay', child: Text("çay")),
                  DropdownMenuItem(value: 'latte', child: Text("latte")),
                  DropdownMenuItem(value: 'mocha', child: Text("mocha")),
                ],
                value: choose,
                onChanged: (String? newValue) {
                  setState(() {
                    choose = newValue!;
                  });
                },
              ),
              SpecialButton(onTap: () {}),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                child: isOpen ? Text("Menü: lorem ipsum")  : Text("button one"),
              ),
              ElevatedButton(
                onPressed: isAction ? () {} : null,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                child: Text("button"),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isAction2 = !isAction2;
                  });
                },
                child: Text("button"),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_animation.value, 0),
                    child: child,
                  );
                },
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isAction2 ? Colors.grey : Colors.pink,
                  ),
                  child: Text("button"),
                  onPressed: () {
                    if (!isAction2) {
                      shake();
                      playSound();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
