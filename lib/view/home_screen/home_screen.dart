// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:api_model_creation_b/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    //insted of
    //Provider.of<HomeScreenController>(context, listen: false).convertToModel();
    //use read
    context.read<HomeScreenController>().convertToModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //insted of
    //final homescreenprovider = Provider.of<HomeScreenController>(context);
    //use read
    final homescreenProvider = context.watch<HomeScreenController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ListView.builder(
        itemCount: homescreenProvider.studentModelList?.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.indigo,
            child: Column(
              children: [
                Text(homescreenProvider.studentModelList?[index].name
                        .toString() ??
                    ""),
                Text(homescreenProvider.studentModelList?[index].age
                        .toString() ??
                    ""),
                Text(
                    homescreenProvider.studentModelList?[index].ph.toString() ??
                        ""),
                Text(homescreenProvider.studentModelList?[index].place
                        .toString() ??
                    ""),
                Text(homescreenProvider.studentModelList?[index].batch
                        .toString() ??
                    ""),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
