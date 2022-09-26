import 'package:flutter/material.dart';
import 'package:michiapp/pages/michipage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:  'Material.App',
        initialRoute: MichiPage.routerName,
        debugShowCheckedModeBanner: false,
        routes: {
          MichiPage.routerName : ( _ ) => const MichiPage(),

        },
        theme: ThemeData.light(),
    );

  }


}

