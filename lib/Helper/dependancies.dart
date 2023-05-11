import 'package:get/instance_manager.dart';

import '../Data/Api/apiclass.dart';
import '../Data/repository/popularporductrepo.dart';
import '../controllers/popularproductcontroller.dart';

Future<void> init() async {
  //API Client
  Get.lazyPut(() => Apiclient(appbaseurl: ""));
  //REPO
  Get.lazyPut(() => Popularproductrepo(apiClient: Get.find()));
  //Controllers
  Get.lazyPut(() => Popularproductcontroller(popularproductrepo: Get.find()));
}
