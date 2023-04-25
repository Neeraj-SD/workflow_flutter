import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:workflow_flutter/screens/home_screen.dart';
import 'package:workflow_flutter/screens/login_screen.dart';
// import 'views/login_screen.dart';
// import 'views/profile_completion.dart';
// import 'views/attendence_screen.dart';
// import 'views/home_screen.dart';
// import 'views/stories_editor.dart';

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
        // GetPage(name: '/attendance', page: () => ScreenAttendence()),
        GetPage(name: '/home', page: () => HomeScreen()),
        // GetPage(name: '/profile-completion', page: () => ProfileCompletion()),
        // GetPage(name: '/stories-editor', page: () => StoriesEditorScreen()),
      ],
    );
  }
}
