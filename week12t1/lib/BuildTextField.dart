
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class BuildTextField extends StatefulWidget{
  BuildTextField({required this.controller, required this.hintText,required this.labelText, required this.isPassword});
TextEditingController controller;
  String hintText;
  String labelText;
  final bool isPassword;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BuildTextFieldState();
  } }

class BuildTextFieldState extends State<BuildTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(obscureText :  widget.isPassword ? true:false,
            decoration: InputDecoration(
        enabledBorder:const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black12, width: 2.0),
        ),
          hintText: null == widget.hintText ? " " : widget.hintText,
          labelText: null == widget.labelText ? " " : widget.labelText,

        )
        )
    );
  }
}

