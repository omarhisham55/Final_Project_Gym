import 'package:flutter/material.dart';

class TextClass extends StatelessWidget{
  final String _text;
  final TextStyle _style;
  const TextClass(this._text, this._style, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_text, style: _style);
  }
}