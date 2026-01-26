import 'package:flutter/material.dart';

class StepperView extends StatefulWidget {
  const StepperView({super.key});

  @override
  State<StepperView> createState() => _StepperViewState();
}

class _StepperViewState extends State<StepperView> {
  int currentStep = 0;
  int incrementValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stepper(
            currentStep: currentStep,
            controlsBuilder: (context, details) {
              return const SizedBox.shrink();
            },
            steps: List.generate(
              10,
              (index) => Step(
                stepStyle: StepStyle(color: Colors.blue),
                isActive: currentStep == index,
                title: Text("$incrementValue"),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          setState(() {
                            if (incrementValue < 50) {
                              incrementValue += 5;
                              if(currentStep < 9) currentStep++;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/images/party.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          setState(() {
                            if (incrementValue > 0) {
                              incrementValue -= 5;
                              if(currentStep > 0) currentStep--;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/images/yoga.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
