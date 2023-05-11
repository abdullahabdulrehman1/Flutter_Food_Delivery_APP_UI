// import 'package:get/get_connect/http/src/response/response.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// ignore_for_file: empty_statements, unused_element

import 'package:get/get.dart';

import '../Data/repository/popularporductrepo.dart';
import '../models/product_model.dart';

class Popularproductcontroller extends GetxController {
  final Popularproductrepo popularproductrepo;
  Popularproductcontroller({required this.popularproductrepo}) {
    List<dynamic> _popularproductlist = [];
    List<dynamic> popularproductlist() {
      return _popularproductlist;
    }

    ;

    Future<void> getPopularproductlist() async {
      Response response = await popularproductrepo.getPopularproductlist();

      if (response.statusCode == 200) {
        print("GOt PRODUCTS");
        _popularproductlist = [];
        _popularproductlist.addAll(Popular.fromJson(response.body).products);
        update();
      } else {}
    }
  }

  // void getPopularproductlist() {}
}
