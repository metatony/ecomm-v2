// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/screens/wrapper.dart';
import 'utils/exports.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => NotifierState()),
        StreamProvider<UserModel?>.value(
          value: AuthService().user,
          initialData: null,
        ),
      ],
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
