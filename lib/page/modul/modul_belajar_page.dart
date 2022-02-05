import 'package:flutter/material.dart';

class ModulBelajar extends StatefulWidget {
  const ModulBelajar({Key? key}) : super(key: key);

  @override
  _ModulBelajarState createState() => _ModulBelajarState();
}

class _ModulBelajarState extends State<ModulBelajar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Modul Belajar'),
      ),
      body: Text('Text'),
    );
  }
}
