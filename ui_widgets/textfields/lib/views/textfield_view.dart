import 'package:flutter/material.dart';

class TextfieldView extends StatefulWidget {
  const TextfieldView({super.key});

  @override
  State<TextfieldView> createState() => _TextfieldViewState();
}

class _TextfieldViewState extends State<TextfieldView> {
  final TextEditingController _emailController = TextEditingController();
  String? _emailError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 30),
              SizedBox(
                width: 300,
                child: TextField(
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Name-Surname',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),

              SizedBox(
                width: 300,
                child: TextField(
                  controller:  _emailController,
                  keyboardType: TextInputType.emailAddress,
                  
                  style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                  ),
                  decoration: InputDecoration(
                    errorText: _emailError,
                    hintText: 'Enter Email',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onSubmitted: (value){
                    if(!isValidEmail(value)){
                      setState(() {
                        _emailError = "Geçersiz email formatı!";
                      });
                    }
                  },
                ),
              ),

              SizedBox(
                width: 300,
                child: TextField(
                  maxLength: 10,
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink, width: 2),
                       borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
bool isValidEmail(String email){
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}