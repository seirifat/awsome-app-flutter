import 'package:awsomeapp/modules/images_list/image_list_page.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff004751),
        highlightColor: const Color(0xffcdfa96),
        useMaterial3: true,
        fontFamily: 'Lato',
      ),
      home: const ImageListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
