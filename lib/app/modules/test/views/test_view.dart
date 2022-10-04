import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:programming_qoutes/app/modules/test/controllers/test_controller.dart';

class TestView extends GetView<TestController> {
  const TestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   title: const Text('Inspirational Qoutes'),
      //   centerTitle: true,
      //   // backgroundColor: Colors.transparent,
      // ),
      body: Center(
        child: Obx(
          () => Container(
            padding: const EdgeInsets.all(20),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(controller.image),
                fit: BoxFit.cover,
                opacity: 0.2,
              ),
            ),
            child: Visibility(
              visible: controller.isLoading.isFalse,
              replacement: SizedBox(
                height: 60.0,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 36),
                      children: <TextSpan>[
                        TextSpan(
                          text: '${controller.qoutation.en} ',
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                        TextSpan(
                          text: '~ ${controller.qoutation.author}',
                          style: const TextStyle(
                            fontSize: 28,
                            fontFamily: 'Times New Roman',
                          ),
                        )
                      ],
                    ),
                    textScaleFactor: 0.5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.getData,
        child: const Icon(Icons.autorenew),
      ),
    );
  }
}
