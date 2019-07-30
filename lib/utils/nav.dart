import 'package:flutter/material.dart';

push(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) {
    return page;
  }));
}

pushReplacement(BuildContext context, Widget page) {
  return Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) {
    return page;
  }));
}
