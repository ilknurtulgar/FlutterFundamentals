import 'package:flutter/material.dart';

import '../model/journey_model.dart';
import '../utils/color_util.dart';
import '../utils/text_util.dart';

class CustomBottomsheet extends StatefulWidget {
  final TextEditingController titleController;
  final TextEditingController countController;

  const CustomBottomsheet({
    super.key,
    required this.countController,
    required this.titleController,
  });
  @override
  State<CustomBottomsheet> createState() => _CustomBottomsheetState();
}

class _CustomBottomsheetState extends State<CustomBottomsheet> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height / 1.5,
      decoration: BoxDecoration(
        color: ColorUtil.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              TextUtil.addTravelPlan,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 15),
            Text(
              TextUtil.placeNameLabel,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            TextField(
              controller: widget.titleController,
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecorationExtension.forTextField(
                hintText: TextUtil.placeNameHint,
              ),
            ),
            SizedBox(height: 15),
            Text(
              TextUtil.placeNumberLabel,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            TextField(
              controller: widget.countController,
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecorationExtension.forTextField(
                hintText: TextUtil.placeNumberHint,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  TextUtil.didWeGoLabel,

                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),

            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  if (widget.titleController.text.isEmpty &&
                      widget.countController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text(TextUtil.emptyForm),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(TextUtil.approve),
                          ),
                        ],
                      ),
                    );
                    return;
                  }

                  if (widget.titleController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text(TextUtil.emptyName),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(TextUtil.approve),
                          ),
                        ],
                      ),
                    );
                    return;
                  }

                  if (int.tryParse(widget.countController.text) == null) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text(TextUtil.invalidInput),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(TextUtil.approve),
                          ),
                        ],
                      ),
                    );
                    return;
                  }

                  final model = JourneyModel(
                    isGo: isChecked,
                    count: int.tryParse(widget.countController.text) ?? 0,
                    title: widget.titleController.text,
                  );

                  Navigator.pop(context, model);
                },
                child: Text(
                  TextUtil.saveButton,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension InputDecorationExtension on InputDecoration {
  static InputDecoration forTextField({String? hintText}) {
    return InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
