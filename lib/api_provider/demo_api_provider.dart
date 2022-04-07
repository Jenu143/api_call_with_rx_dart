import 'dart:convert';
import 'package:api_call_with_rx_dart/model/demo_model.dart';
import 'package:http/http.dart' as http;

class DemoAPiProvider {
  Future<ApiResponseModel> demoApiProvider() async {
    final reponse = await http.get(Uri.parse(
        'https://us-central1-international-stylist-b06a9.cloudfunctions.net/test01/android'));
    if (reponse.statusCode == 200) {
      return ApiResponseModel<DemoModel>(
          data: DemoModel.fromJson(json.decode(reponse.body)));
    } else {
      return ApiResponseModel(data: 'Error');
    }
  }

  Future<ApiResponseModel> fgfg() async {
    final reponse = await http.get(Uri.parse(
        'https://us-central1-international-stylist-b06a9.cloudfunctions.net/test01/android'));
    if (reponse.statusCode == 200) {
      return ApiResponseModel<DemoModel>(
          data: DemoModel.fromJson(json.decode(reponse.body)));
    } else {
      return ApiResponseModel(data: 'Error');
    }
  }
}
