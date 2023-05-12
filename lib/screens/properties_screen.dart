import 'package:flutter/material.dart';
import 'package:maskan/widgets/app_bar.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        child: Text("Properties screen", style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
