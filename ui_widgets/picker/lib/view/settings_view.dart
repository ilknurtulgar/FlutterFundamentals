import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../model/person_model.dart';

class SettingsView extends StatefulWidget {
  final Person person;
  const SettingsView({super.key, required this.person});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final List<String> _fontFamilies = ['Roboto', 'Serif', 'Monospace'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.person.backgroundColor,
      appBar: AppBar(
        title: Text("Görünüm Ayarları"),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Yazı Tipi Seçin", style: widget.person.textstyle),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: DropdownButton<String>(
                underline: SizedBox(),
                value:
                    _fontFamilies.contains(widget.person.textstyle.fontFamily)
                    ? widget.person.textstyle.fontFamily
                    : 'Roboto',
                items: _fontFamilies.map((String font) {
                  return DropdownMenuItem(
                    value: font,
                    child: Text(font, style: TextStyle(fontFamily: font)),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    widget.person.textstyle = widget.person.textstyle.copyWith(
                      fontFamily: value,
                    );
                  });
                },
              ),
            ),
            SizedBox(height: 35,),

            Text("Arka Plan Rengini Değiştir",style: widget.person.textstyle,),
            SizedBox(height: 10),
            ColorPicker(
                pickerAreaBorderRadius: BorderRadius.circular(20),
                displayThumbColor: true, 
                pickerAreaHeightPercent: 0.7,
                pickerColor: widget.person.backgroundColor, onColorChanged: (Color color){
                setState(() {
                  widget.person.backgroundColor = color;
                });
            }),
            SizedBox(height: 35,),
            Align(
                alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context, widget.person);
                    },
                    icon: const Icon(Icons.save, size: 24),
                    label: const Text("UYGULA",),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
