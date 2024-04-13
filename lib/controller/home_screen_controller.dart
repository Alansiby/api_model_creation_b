import 'package:api_model_creation_b/model/student_model.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  List<StudentModel>? studentModelList = [];
  List<Map<String, dynamic>> studentMap = [
    {
      "name": "asdfgh",
      "place": "123456789",
      "age": 3,
      "ph": "23456789",
      "batch": "cvbnm,",
    },
    {
      "name": "John Doe",
      "place": "987654321",
      "age": 20,
      "ph": "9876543210",
      "batch": "xyz",
    },
    {
      "name": "Jane Smith",
      "place": "456789123",
      "age": 25,
      "ph": "1234567890",
      "batch": "abc",
    },
    {
      "name": "asdfgh",
      "place": "123456789",
      "age": 3,
      "ph": "23456789",
      "batch": "cvbnm,",
    },
    {
      "name": "asdfgh",
      "place": "123456789",
      "age": 3,
      "ph": "23456789",
      "batch": "cvbnm,",
    },
    // Add more data here as needed
  ];

//////self convertion of data
  // void convertToModel() {
  //   studentModelList = studentMap
  //       .map((e) => StudentModel(
  //             age: e["age"],
  //             name: e["name"],
  //             ph: e["ph"],
  //             place: e["place"],
  //             batch: e["dep"],
  //           ))
  //       .toList();
  // }

////// convertion of data by quick type
  void convertToModel() {
    studentModelList = studentMap.map((e) => StudentModel.fromJson(e)).toList();
  }
}
