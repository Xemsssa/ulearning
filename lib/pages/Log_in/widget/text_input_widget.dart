import 'package:flutter/material.dart';
class TextInputWidget extends StatelessWidget {
  final String text;
  IconData icon;
  TextInputWidget({
    super.key,
    required this.textEditingController,
    required this.text,
    required this.icon
  });

  final textEditingController;

  @override
  Widget build(BuildContext context) {
  return Container(
  margin: EdgeInsets.only(left: 20, right: 20),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.white,
  border: Border.all(
  width: 2, color: Colors.grey
  )
  ) ,
  child: TextField(
  controller: textEditingController,
  decoration: InputDecoration(
  hintText: text,
  prefix: Icon(icon, color: Colors.black),
  focusedBorder: OutlineInputBorder(
  borderRadius:BorderRadius.circular(18),
  borderSide: BorderSide(
  width: 1.0,
  color: Colors.white
  ),
  ),
  enabledBorder: OutlineInputBorder(
  borderRadius:BorderRadius.circular(18),
  borderSide: BorderSide(
  width: 1.0,
  color: Colors.white
  ),
  ),
  border: OutlineInputBorder(
  borderRadius:BorderRadius.circular(18),
  )
  ),
  )
  );
  }
}

