import 'dart:io';

import 'package:widget_function/dartio_web_use/global_getter.dart';

PLatformShow get createAdapter => DartIoUse();

class DartIoUse implements PLatformShow {
  @override
  String platformName() {
    return '${HttpStatus.accepted} with Dart Io';
  }
}
