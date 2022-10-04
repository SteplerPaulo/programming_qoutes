import 'dart:math';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../models/qoutes_model.dart';

class HomeController extends GetxController {
  late Qoute qoutation = Qoute(author: '', en: '', id: '');
  RxBool isLoading = false.obs;
  String image = 'https://picsum.photos/300/500?v=${Random().nextInt(1000)}';

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future getData() async {
    isLoading(true);
    try {
      image = 'https://picsum.photos/300/500?v=${Random().nextInt(1000)}';

      var response = await Dio()
          .get('https://programming-quotes-api.herokuapp.com/quotes/random');
      qoutation = Qoute.fromJson(response.data);

      isLoading(false);
    } catch (e) {
      isLoading(false);
    }
  }
}
