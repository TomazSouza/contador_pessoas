import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';

void main() {
  runApp(
    Sizer(
      builder: ((context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      }),
    ),
  );
}
