import 'dart:io' show File, Platform;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:image_picker/image_picker.dart';

class ImageRegistrationScreen extends StatefulWidget {
  const ImageRegistrationScreen({Key? key}) : super(key: key);

  @override
  _ImageRegistrationScreenState createState() =>
      _ImageRegistrationScreenState();
}

class _ImageRegistrationScreenState extends State<ImageRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
