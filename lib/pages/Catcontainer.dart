import 'package:flutter/material.dart';
import 'package:michiapp/decorations/Containerdeco.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 500,
        decoration: borders(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              width: double.infinity,
              height: 500,
              child:Image.asset( 'assets/bongo-cat-button.gif',fit: BoxFit.fill, )
          ),
        ),
      ),
    );
  }
}

