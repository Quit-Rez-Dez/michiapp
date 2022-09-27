import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///DECORATIONS
BoxDecoration borders() => BoxDecoration(
    color: Colors.black26,
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [
      BoxShadow(
          color:Colors.black12,
          offset: Offset(0,7),
          blurRadius: 10
      )
    ]
);