
import 'package:flutter/material.dart';

import 'package:michiapp/Services/locator.dart';
import 'package:michiapp/controller/imgcontroller.dart';
import 'package:michiapp/models/cat.dart';
import 'package:michiapp/pages/Catcontainer.dart';
import 'package:michiapp/pages/Randomcat.dart';




class MichiPage extends StatefulWidget {

  static const String routerName='Home';



  const MichiPage({Key? key}) : super(key: key);

  @override
  State<MichiPage> createState() => _MichiPageState();
}

class _MichiPageState extends State<MichiPage> {

  Catmodel cat= Catmodel('no');
  bool _first=true;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('cataas.com'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24-12),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.transparent,
            child: ClipOval(child: Image.asset('assets/flycat.gif'),),
          ),
        ),
      ),
      body: _first
        ? Firstpage()
        : RdmCat(cat),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: FloatingActionButton.extended(
          hoverColor: Colors.green,
          icon: const Icon(Icons.new_releases),
          onPressed: () async {

            Catmodel newcat =await locator.get<imgcontroller>().getNextimg();
            print(newcat.url);

            setState(() {
              _first=false;
              cat=newcat;
              print(cat.url);
            });

          },
            label: const Text('Meow'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


}
