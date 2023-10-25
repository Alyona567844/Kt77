import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () => controller.getData(),
                  child: const Text("Get data")),
              Obx(()=> ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.cars.length,
                  itemBuilder: (context, index) {
                    var rolcar = controller.cars[index];
                    return ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(index.toString()),
                        ],
                      ),
                      title: Row(children: [
                        Text(
                          rolcar.brand,
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          rolcar.model,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 59, 58, 58)),
                        )
                      ]),
                      subtitle: Center(
                        child: Column(
                          children: [
                            Text(
                              'Color: ${rolcar.color}',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 59, 58, 58)),
                            ),
                            Text(
                              'Price: ${rolcar.price.toString()}',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 59, 58, 58)),
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
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
