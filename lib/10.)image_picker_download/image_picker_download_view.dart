import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerView extends StatefulWidget {
  const ImagePickerView({super.key});

  @override
  State<ImagePickerView> createState() => _ImagePickerViewState();
}

class _ImagePickerViewState extends State<ImagePickerView> {
  ImagePicker imagePicker = ImagePicker();
  XFile? selectImage = XFile('');

  Future<void> selectImageSources() async {
    selectImage = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Image.file(File(selectImage?.path ?? '')),
        ElevatedButton(
            onPressed: () {
              selectImageSources();
            },
            child: const Text('Select Image'))
      ]),
    );
  }
}
