import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eample/image_picker_controller.dart';

class ImageShow extends StatefulWidget {
  const ImageShow({super.key});

  @override
  State<ImageShow> createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick Image"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(
                        File(controller.imagePath.toString()),
                      )
                    : null,
              ),
            );
          }),
          TextButton(
              onPressed: () {
                controller.uploadImage();
              },
              child: const Text("Pick Image"))
        ],
      ),
    );
  }
}
