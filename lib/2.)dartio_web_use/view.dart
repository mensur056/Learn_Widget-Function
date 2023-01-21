import 'package:flutter/material.dart';
import 'package:widget_function/2.)dartio_web_use/dart_io.dart'
    if (dart.library.html) 'package:widget_function/dartio_web_use/web_io.dart' as show;
import 'package:widget_function/2.)dartio_web_use/global_getter.dart';

class DartIoAndWebHtmlView extends StatefulWidget {
  const DartIoAndWebHtmlView({super.key});

  @override
  State<DartIoAndWebHtmlView> createState() => _DartIoAndWebHtmlViewState();
}

class _DartIoAndWebHtmlViewState extends State<DartIoAndWebHtmlView> {
  final PLatformShow platformName = show.createAdapter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(platformName.platformName()),
      ),
    );
  }
}
