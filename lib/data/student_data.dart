import '../models/student_model.dart';

class StudentData {
  static List<StudentModel> getData() {
    return [
      StudentModel("janki", "flutter", 20),
      StudentModel("Kajal", "React", 22),
      StudentModel("rutik", "flutter", 21),
      StudentModel("nency", "flutter", 26),
      StudentModel("kinjal", "flutter", 23),
    ];
  }
}
