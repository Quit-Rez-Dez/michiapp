import 'package:flutter/material.dart';
import 'package:michiapp/widgets/widgets.dart';

class MichiPage extends StatelessWidget {

  static const String routerName='Home';

  const MichiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('the.Michi.com'),
      ),
      body: Imagenes(),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: FloatingActionButton.extended(
          hoverColor: Colors.green,
          icon: Icon(Icons.new_releases),
          onPressed: () {  },
            label: Text('Meow'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
