import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

import '../Api/apiclass.dart';

class Popularproductrepo extends GetxService {
  late final Apiclient apiClient;
  Popularproductrepo({required this.apiClient});

  Future<Response> getPopularproductlist() async {
    return await apiClient.getData("/api/v1/products/popular");
  }
}
