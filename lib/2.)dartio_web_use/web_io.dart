import 'dart:html';

import 'package:widget_function/2.)dartio_web_use/global_getter.dart';

PLatformShow get createAdapter => WebUse();

class WebUse implements PLatformShow {
  @override
  String platformName() {
    return '${HttpStatus.accepted} with Web HTML';
  }
}
