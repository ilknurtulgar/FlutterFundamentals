import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:segmented_controller/app_view.dart';
import 'package:segmented_controller/neon_view.dart';

import 'academy_view.dart';

class SegmentedControllerView extends StatefulWidget {
  const SegmentedControllerView({super.key});

  @override
  State<SegmentedControllerView> createState() =>
      _SegmentedControllerViewState();
}

class _SegmentedControllerViewState extends State<SegmentedControllerView> {
  int selectedIndex = 0;
  double get scale {
    switch (selectedIndex) {
      case 0:
        return 1.2;
      case 1:
        return 1.0;
      case 2:
        return 0.85;
      default:
        return 1.0;
    }
  }

  final List<Widget> _screens = [AcademyView(), NeonView(), AppView()];

  @override
  Widget build(BuildContext context) {
    Color isNeonSelected(){
      if(selectedIndex == 1){
        return Colors.red;
      }else if(selectedIndex == 0)
        return Colors.blue;
      else
        return Colors.green;
    }
    

    return Scaffold(
      backgroundColor: isNeonSelected(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedScale(
                scale: scale,
                duration: Duration(milliseconds: 300),
                child: CupertinoSegmentedControl<int>(
                  unselectedColor: Color(0xFF121917),
                  selectedColor: Colors.yellow,
                  borderColor: Colors.yellow,
                  children: const {
                    0: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Neon Academy 2023',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    1: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Neon',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    2: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Apps',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  },
                  groupValue: selectedIndex,
                  onValueChanged: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
            ),

            Expanded(
              child: IndexedStack(index: selectedIndex, children: _screens),
            ),
          ],
        ),
      ),
    );
  }
}
