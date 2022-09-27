

import 'package:michiapp/Services/get_it.dart';
import 'package:michiapp/Services/locator.dart';

class imgcontroller
{

  getNextimg()  async{
    return locator.get<GetImg>().getCatImg();
  }
}