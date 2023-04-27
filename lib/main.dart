import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:workflow_flutter/screens/home_screen.dart';
import 'package:workflow_flutter/screens/login_screen.dart';

import 'getx_di.dart';

void main() async {
  GetXDependancyInjector().onInit();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      home: LoginScreen(),
      getPages: [
        // GetPage(
        //     name: '/',
        //     page: () => storage.hasData('authToken')
        //         ? storage.read('isComplete') ?? false
        //             ? HomeScreen()
        //             : null
        //         : LoginScreen()),
        // GetPage(name: '/posts', page: () => PostsScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        // GetPage(name: '/profile-completion', page: () => ProfileCompletion()),
      ],
    );
  }
}
