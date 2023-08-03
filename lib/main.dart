// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_app/screens/homepage/components/bottom_bar.dart';
import 'package:ecommerce_app/screens/wrapper.dart';
import 'utils/exports.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => NotifierState(),
      child: ScreenUtilInit(
        designSize: Size(375, 812),
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
            home: Wrapper(),
          );
        },
      ),
    );
  }
}
