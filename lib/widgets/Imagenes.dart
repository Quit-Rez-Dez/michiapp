import 'package:flutter/material.dart';

class Imagenes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 500,
       decoration: _borders(),
        child: Stack(
          children: [
            Backgroundimage()
          ],
        ),
      ),
    );
  }

  BoxDecoration _borders() => BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
          color:Colors.black12,
          offset: Offset(0,7),
        blurRadius: 10
      )
    ]
  );
}

class Backgroundimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        height: 500,
        child: FadeInImage(
          placeholder: AssetImage('assets/bongo-cat-button.gif'),
          image: NetworkImage('https://cataas.com/cat?height=500'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
