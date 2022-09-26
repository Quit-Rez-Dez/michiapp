import 'package:flutter/material.dart';

class MichiPage extends StatelessWidget {

  static const String routerName='Home';

  const MichiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('the.Michi.com'),
      ),
      body: Center(child: Text('Michi page')),
    );
  }
}
