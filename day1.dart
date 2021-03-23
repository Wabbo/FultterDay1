void main() {
  printEvenNumbersInRange(10, 20);
  List<int> list = [1, 2, 3, 4, 5];
  hasOddNumber(list);
  final String tmp = "The wren\nEarns his living.\nNoiselessly";
  final String tmp2 = """The wren
Earns his living.
Noiselessly""";

  print("${tmp}\n-----------------------------------------------------------");
  printStr(tmp2);

  var objU = User.admin();
  print(objU.id);
  print(objU);

  var objC = Category(0, 'nameAr', 'nameEn', 'photo', 'createdAt', 'updatedAt');
  print(objC.nameAr);
  print(objC);

}

//task 1 Write a function with tow parameter (start and end) that print even numbers in this rang

void printEvenNumbersInRange(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// task 2 Defined a random numbered list and print if contain odd number or not.

void hasOddNumber(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 1) {
      print("the odd number = ${list[i]}");
    }
  }
}

// task 3
void printStr(String s) {
  List<String> list = s.split("\n");
  String t;
  for (int i = 0; i < 3; i++) {
    if (i == 0) {
      print(list[i]);
    } else if (i == 1) {
      t = list[i];
      print(t.toUpperCase());
    } else if (i == 2) {
      t = list[i];
      print(t.toLowerCase());
    }
  }
}

// task 4 

class User {
  int id;
  bool isLogged;
  String username;
  String gender;
  bool canComment;
  String photo;
  String email;
  int level;
  String semester;
  String country;
  bool enabled;
  List pushTokens;
  String role;
  String createdAt;
  String updatedAt;

  @override
  String toString() {
    return username;
  }

  User(
      {this.id,
      this.isLogged,
      this.username,
      this.gender,
      this.canComment,
      this.photo,
      this.email,
      this.level,
      this.semester,
      this.country,
      this.enabled,
      this.pushTokens,
      this.role,
      this.createdAt,
      this.updatedAt});

  User.admin() {
    id = 638;
    isLogged = true;
    username = "sameh mourad";
    gender = "male";
    canComment = true;
    photo =
        "https://bassthalk.ams3.digitaloceanspaces.com/8f72a318793909dc/26804342_159620844679358_2108177390195878876_n.jpg";
    email = "samehmourad05@gmail.com";
    level = 1;
    semester = "first";
    country = "Egypt";
    enabled = true;
    pushTokens = [];
    role = "student";
    createdAt = "2020-09-07T14:54:59.766Z";
    updatedAt = "2021-02-25T11:07:40.987Z";
  }
}

class Category {
  int id;
  String nameAr;
  String nameEn;
  String photo;
  String createdAt;
  String updatedAt;
  
  @override
  String toString() {
    return nameAr;
  }

  Category(this.id, this.nameAr, this.nameEn, this.photo, this.createdAt,
      this.updatedAt);
}

class Course {
  int id;
  String status;
  String level;
  String language;
  double numberOfHours;
  int numberOfEnrolledStudents;
  Category category;
  String description;
  List<String> objectives;
  List<String> requirements;
  List<String> include;
  String nameAr;
  String nameEn;
  String photo;
  Teacher teacher;
  int price;
  int rating;
  bool hasOfferNow;
  String discountStartedAt;
  String discountFinishedAt;
  bool visibility;
  int passingPercentage;
  String createdAt;
  String updatedAt;

  Course(
      {this.id,
      this.status,
      this.level,
      this.language,
      this.numberOfHours,
      this.numberOfEnrolledStudents,
      this.category,
      this.description,
      this.objectives,
      this.requirements,
      this.include,
      this.nameAr,
      this.nameEn,
      this.photo,
      this.teacher,
      this.price,
      this.rating,
      this.hasOfferNow,
      this.discountStartedAt,
      this.discountFinishedAt,
      this.visibility,
      this.passingPercentage,
      this.createdAt,
      this.updatedAt});
}

class Teacher {
  int id;
  String username;
  String photo;
  String role;

  Teacher({this.id, this.username, this.photo, this.role});
  
  }

