import 'package:flutter/material.dart';
import 'package:instax/common/dummyData.dart';
import 'package:instax/common/themes.dart';
import 'package:instax/presentation/provider/instax_list_provider.dart';
import 'package:provider/provider.dart';

import 'presentation/page/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => InstaxListProvider(instaxCameraList),
        )
      ],
      child: MaterialApp(
        title: 'Instax',
        theme: ThemeData(
          primarySwatch: whiteTheme,
        ),
        home: Splashscreen(),
      ),
    );
  }
}
