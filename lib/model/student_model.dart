////Self created model
// class StudentModel {
//   final String? name;
//   final int? age;
//   final String? place;
//   final String? ph;
//   final String? batch;

//   StudentModel({this.name, this.age, this.place, this.ph, this.batch});
// }

// ignore_for_file: dangling_library_doc_comments

/////Model is created by quicktype
class StudentModel {
  String? name;
  String? place;
  int? age;
  String? ph;
  String? batch;

  StudentModel({
    this.name,
    this.place,
    this.age,
    this.ph,
    this.batch,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        name: json["name"],
        place: json["place"],
        age: json["age"],
        ph: json["ph"],
        batch: json["batch"],
      );
}
