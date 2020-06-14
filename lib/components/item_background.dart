import 'package:flutter/material.dart';

class ItemBackground extends StatelessWidget {
  
  Color _color;
  Icon _icon;
  Alignment _align;

  ItemBackground(this._color,this._icon,this._align);

  @override
  Widget build(BuildContext context) {
    return Container(
            color: _color,
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: _align,
              child: _icon,
          ),
        );
  }
}