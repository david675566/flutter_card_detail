class CourseModel {
  final int id;
  final String name;
  final String desc;
  final String date;

  const CourseModel({
    required this.id,
    required this.name,
    required this.desc,
    required this.date,
  });
}

class TeacherModel {
  final int id;
  final String name;
  final String title;
  final String avatarUrl;
  final List<CourseModel> classes;

  const TeacherModel({
    required this.id,
    required this.name,
    required this.title,
    this.avatarUrl = "https://i.pravatar.cc/300",
    this.classes = const [],
  });

  factory TeacherModel.example(final int id, {final String? title}) {
    return TeacherModel(
      id: id,
      name: "Example name $id",
      title: title ?? "Professor",
      classes: [],
    );
  }
}

const exampleTeachers = [
  TeacherModel(
    id: 1,
    name: "Albert Flores",
    title: "Demonstrator",
    avatarUrl: "https://i.pravatar.cc/300?img=53",
    classes: [
      CourseModel(
        id: 1,
        name: "基礎程式設計",
        desc: "基本程式編寫之學習，會教導大家如何編寫及編譯，全課程會以 C# 授課",
        date: "每周四,10:00-12:00",
      ),
      CourseModel(
        id: 1,
        name: "人工智慧總整與實作",
        desc: "本課會教導大家人工智慧的基礎及如何編寫譯，全課程會以 prolog 授課",
        date: "每周四,14:00-16:00",
      ),
      CourseModel(
        id: 1,
        name: "訊號與系統",
        desc: "基本訊號傳遞處裡理論",
        date: "每周五,10:00-12:00",
      ),
    ],
  ),
  TeacherModel(
    id: 14,
    name: "Floyd Miles",
    title: "Lecturer",
    avatarUrl: "https://i.pravatar.cc/300?img=52",
    classes: [
      CourseModel(
        id: 1,
        name: "Example Name",
        desc: "Example Desc.",
        date: "每周一,8:00-10:00",
      ),
      CourseModel(
        id: 1,
        name: "Example Name",
        desc: "Example Desc.",
        date: "每周三,13:00-16:00",
      ),
      CourseModel(
        id: 1,
        name: "Example Name",
        desc: "Example Desc.",
        date: "每周四,9:00-10:00",
      ),
    ],
  ),
  TeacherModel(
    id: 514,
    name: "Savannah Nguyen",
    title: "Senior Lecturer",
    avatarUrl: "https://i.pravatar.cc/300?img=35",
    classes: [
      CourseModel(
        id: 1,
        name: "微積分(下)",
        desc: "微積分",
        date: "每周四,10:00-12:00",
      ),
    ],
  ),
  TeacherModel(
    id: 1919,
    name: "Jenny Wilson",
    title: "Professor",
    avatarUrl: "https://i.pravatar.cc/300?img=49",
    classes: [
      CourseModel(
        id: 1,
        name: "Example Name",
        desc: "Example Desc.",
        date: "每周四,10:00-12:00",
      ),
      CourseModel(
        id: 1,
        name: "訊號與系統",
        desc: "基本訊號傳遞處裡理論",
        date: "每周五,10:00-12:00",
      ),
    ],
  ),
  TeacherModel(
    id: 8100,
    name: "Floyd Miles",
    title: "Professor",
    avatarUrl: "https://i.pravatar.cc/300?img=61",
    classes: [
      CourseModel(
        id: 1,
        name: "Example Name",
        desc: "Example Desc.",
        date: "每周四,9:00-10:00",
      ),
    ],
  ),
];
