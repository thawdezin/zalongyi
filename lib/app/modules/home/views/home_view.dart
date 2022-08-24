import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Column(children: [
      ElevatedButton(onPressed: (){
        //Get.changeThemeMode(ThemeMode.dark);
        print("OK?");
        CupertinoAdaptiveTheme.of(context).setLight();
      }, child: const Text("OK"),),
      const Text("HellO"),
      ElevatedButton(onPressed: (){
        CupertinoAdaptiveTheme.of(context).setDark();
        print("HI");
      }, child: const Text("How about Cupertion?"))
    ],));
  }
}
