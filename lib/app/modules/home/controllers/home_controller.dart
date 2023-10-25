import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../data/models/car/car.dart';
import '../../../data/models/getcar/getcar.dart';

class HomeController extends GetxController {
  Dio client = Dio();
  String url = 'https://myfakeapi.com/api/cars/';
  var cars = <Car>[].obs;
  

  @override
  void onInit() {
    super.onInit();
  }

  void getData() async {
    var response = await client.get(url);
    var responseData = Getcar.fromJson(response.data);
    cars.value = responseData.cars;
  }
  
}
