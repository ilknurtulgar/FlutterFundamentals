import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:picker/model/person_model.dart';
import 'package:picker/view/settings_view.dart';

class EditProfileView extends StatefulWidget {
  final Person person;
  const EditProfileView({super.key, required this.person});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  late TextEditingController _ageEditingController = TextEditingController();
  late TextEditingController _nameEditingController = TextEditingController();
  File? _choosedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _nameEditingController = TextEditingController(text: widget.person.name);
    _ageEditingController = TextEditingController(
      text: widget.person.age.toString(),
    );
    if (widget.person.imagePath != null) {
      _choosedImage = File(widget.person.imagePath!);
    }
  }

  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      initialDate: DateTime.now(),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        int calculatedAge = DateTime.now().year - picked.year;
        _ageEditingController.text = calculatedAge.toString();
      });
    }
  }

  @override
  void dispose() {
    _nameEditingController.dispose();
    _ageEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.person.backgroundColor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Profil Düzenleme"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsView(person: widget.person),
                  ),
                );
                setState(() {});
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            CircleAvatar(
              radius: 100,
              backgroundImage: _choosedImage != null
                  ? FileImage(_choosedImage!)
                  : null,
              child: _choosedImage == null ? Text("Görsel") : null,
            ),
            SizedBox(height: 35),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      controller: _nameEditingController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        label: Text("Ad soyad", style: widget.person.textstyle),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _ageEditingController,
                      keyboardType: TextInputType.number,
                      readOnly: true,

                      onTap: _pickDate,
                      decoration: InputDecoration(
                        label: Text(
                          "Yaş (Takvimden seçmek için tıkla)",
                          style: widget.person.textstyle,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    final XFile? image = await _picker.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (image != null) {
                      setState(() {
                        _choosedImage = File(image.path);
                      });
                    }
                  },
                  icon: const Icon(Icons.photo, size: 24),
                  label: const Text("FOTOĞRAF SEÇ"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    widget.person.name = _nameEditingController.text;
                    widget.person.age =
                        int.tryParse(_ageEditingController.text) ?? 0;
                    if (_choosedImage != null) {
                      widget.person.imagePath = _choosedImage!.path;
                    }
                    Navigator.pop(context, widget.person);
                  },
                  icon: const Icon(Icons.save, size: 24),
                  label: const Text("KAYDET"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
