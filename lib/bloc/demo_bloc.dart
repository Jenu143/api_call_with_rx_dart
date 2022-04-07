import 'package:api_call_with_rx_dart/api_provider/demo_api_provider.dart';
import 'package:api_call_with_rx_dart/model/demo_model.dart';
import 'package:rxdart/subjects.dart';

class DemoBloc {
  DemoAPiProvider demoAPiProvider = DemoAPiProvider();
  final demoController = PublishSubject<ApiResponseModel>();

  Stream<ApiResponseModel> get demoStream => demoController.stream;

  Future<ApiResponseModel> demoSink() async {
    ApiResponseModel reponse = await demoAPiProvider.demoApiProvider();
    demoController.sink.add(reponse);
    return reponse;
  }
}
