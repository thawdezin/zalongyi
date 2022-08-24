import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_cupertino_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoAdaptiveTheme(
      light: const CupertinoThemeData(
        brightness: Brightness.light,
      ),
      dark: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme) => GetCupertinoApp(
        title: 'Adaptive Theme Demo',
        theme: theme,
       // darkTheme: darkTheme,
        home: MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: CupertinoPageScaffold(
      child: Column(children: [
        ElevatedButton(onPressed: (){
          CupertinoAdaptiveTheme.of(context).setDark();
        }, child: Text("D")),
        Text("HI"),
        ElevatedButton(onPressed: (){
          CupertinoAdaptiveTheme.of(context).setLight();
        }, child: Text("L")),
        CupertinoSlider(value: 2, min: 1, max: 10, onChanged: (double value){
          value += 1;
        }),
        Text(""),
      ],),
    ),);
  }
}
