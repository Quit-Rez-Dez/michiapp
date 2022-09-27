import 'package:flutter/material.dart';
import 'package:michiapp/models/cat.dart';
import 'package:michiapp/decorations/Containerdeco.dart';


class RdmCat extends StatelessWidget {


  late final  Catmodel cat;

  RdmCat(this.cat);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
              child:FadeInImage(
                placeholder: const AssetImage( 'assets/bongo-cat-button.gif' ),
                placeholderFit: BoxFit.fill,
                fadeInDuration: const Duration(milliseconds: 20),
                image: NetworkImage( cat.url  ),
                fit: BoxFit.fill,
                imageErrorBuilder:   (context, error, stackTrace)
                {
                  return Image.asset('assets/bongo-cat-button.gif',);
                },
              )
          ),
        ),
      ),
    );
  }


}
