import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Btn extends StatefulWidget {
  Btn({super.key,required this.label});
  String label;
  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: (){}
      , child: Text(widget.label)),
    );
  }
}