import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 87, 76),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 22, 7),
        title: const Text('List of cars'),
        centerTitle: true,
      ), 
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () => controller.getData(),
                  child: const Text("Get data", style: TextStyle(color: Colors.black,fontSize: 22),)),
              Obx(() => Text("Status: ${controller.status.value.name}")),
              Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.cars.length,
                  itemBuilder: (context, index) {
                    var rolcar = controller.cars[index];
                    return GestureDetector(
                      onTap: () => Get.toNamed('car', arguments: rolcar),
                      child: Card(
                        elevation: 1,
                        child: ListTile(
                          leading: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(rolcar.id.toString()),
                            ],
                          ),
                          title: Center(
                            child: Row(children: [
                              Text(
                                rolcar.brand,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                rolcar.model,
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 59, 58, 58)),
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,),
                          ),
                          subtitle: Center(
                            child: Column(
                              children: [
                                Text(
                                  'Color: ${rolcar.color}',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 59, 58, 58)),
                                ),
                                Text(
                                  'Price: ${rolcar.price.toString()}',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 59, 58, 58)),
                                ),
                              ],
                            ),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (rolcar.availability)
                                Icon(Icons.check_circle)
                              else
                                Icon(Icons.close)
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
