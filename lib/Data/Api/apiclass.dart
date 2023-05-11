import 'package:get/get.dart';

import '../../util/app_constant.dart';

class Apiclient extends GetConnect implements GetxService {
  late String token;
  late final String appbaseurl;
  late Map<String, String> _mainheaders;
  Apiclient({required this.appbaseurl}) {
    baseUrl = appbaseurl;
    timeout = Duration(seconds: 30);
    token = Appconstnats.TOKEN;
    _mainheaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
