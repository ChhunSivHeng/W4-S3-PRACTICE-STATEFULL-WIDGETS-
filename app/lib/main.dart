import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom buttons")),
        body: Center(
          child: Column(
            children: [
              const CustomBottons(),
              SizedBox(height: 20),
              const CustomBottons(),
              SizedBox(height: 20),
              const CustomBottons(),
              SizedBox(height: 20),
              const CustomBottons(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottons extends StatefulWidget {
  const CustomBottons({super.key});

  @override
  State<CustomBottons> createState() => CustomBottonsState();
}

class CustomBottonsState extends State<CustomBottons> {
  bool _selected = false;
  String get _label => _selected ? "Selected" : "Not Selected";
  Color get _textColor => _selected ? Colors.white : Colors.black;
  Color get _backGroundColor =>
      _selected ? Colors.blue[500]! : Colors.blue[50]!;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: _backGroundColor),
        onPressed: () => setState(() => _selected = !_selected),
        child: Center(
          child: Text(
            _label,
            style: TextStyle(color: _textColor, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
