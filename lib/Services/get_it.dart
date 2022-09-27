
import 'package:dio/dio.dart';
import 'package:michiapp/models/cat.dart';

class GetImg{



  Future< Catmodel> getCatImg() async {
    String url = 'https://cataas.com/cat?height=300?t=${DateTime.now().millisecond}';

    var dio = Dio();
    final resp = await dio.get(url);

    if(resp.statusCode==200)
      {
        print('ok');
        Catmodel cat =Catmodel(url);
       return  cat;


      }else {
      Catmodel cat =Catmodel('');
      return cat;
    }


  }
}


