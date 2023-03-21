class EmployeModel {
  String avatarUrl;
  String name;
  String workPositon;
  String dimantsion;
  String deppartment;
  String email;
  DateTime birthDate;
  PhoneNumbers numbers;

  EmployeModel({
    required this.avatarUrl,
    required this.name,
    required this.workPositon,
    required this.dimantsion,
    required this.deppartment,
    required this.email,
    required this.birthDate,
    required this.numbers,
  });
}

class PhoneNumbers {
  String mainPhone;
  String workPhone;
  String whatsAppPhone;
  PhoneNumbers({
    required this.mainPhone,
    required this.workPhone,
    required this.whatsAppPhone,
  });
}

List<EmployeModel> employeModelList = [
  EmployeModel(
    workPositon: "Генеральный директор",
    avatarUrl:
        "http://kenesh.kg/uploads/media/people_photo/0001/72/181022103646_photo1666067660.jpeg",
    birthDate: DateTime.now(),
    deppartment: "Отдел управления",
    dimantsion: "Дирекиция управления",
    email: "aluun228822@gmail.com",
    name: "Абдалиев Мейкинбек Акимович",
    numbers: PhoneNumbers(
      mainPhone: "+996700167167",
      whatsAppPhone: "+996700167167",
      workPhone: "+500505423",
    ),
  ),
  EmployeModel(
    workPositon: "Директор",
    avatarUrl:
        "http://kenesh.kg/uploads/media/people_photo/0001/69/180822093910_%D0%90%D0%B1%D0%B4%D0%B0%D0%BB%D0%B8%D0%B5%D0%B2%20%D0%9C%D0%B5%D0%B9%D0%BA%D0%B8%D0%BD%D0%B1%D0%B5%D0%BA.jpg",
    birthDate: DateTime.now(),
    deppartment: "Отдел управления",
    dimantsion: "Дирекиция управления",
    email: "aisarckan228822@gmail.com",
    name: "Абдибаева Айсаракан Нышановна",
    numbers: PhoneNumbers(
      mainPhone: "+996700167167",
      whatsAppPhone: "+996700167167",
      workPhone: "+500505423",
    ),
  ),
  EmployeModel(
    workPositon: "Генеральный директор",
    avatarUrl:
        "http://kenesh.kg/uploads/media/people_photo/0001/73/271022094648_image-26-10-22-05-39-9.jpeg",
    birthDate: DateTime.now(),
    deppartment: "Отдел безопасности",
    dimantsion: "Дирекиция безопасности",
    email: "abirov@gmail.com",
    name: "Абиров Жаныбек Болотбекович",
    numbers: PhoneNumbers(
      mainPhone: "+996700167167",
      whatsAppPhone: "+996700167167",
      workPhone: "+996500505423",
    ),
  ),
  EmployeModel(
    workPositon: "Генеральный директор",
    avatarUrl:
        "http://kenesh.kg/uploads/media/people_photo/0001/73/271022094648_image-26-10-22-05-39-9.jpeg",
    birthDate: DateTime.now(),
    deppartment: "Отдел безопасности",
    dimantsion: "Дирекиция безопасности",
    email: "abirov@gmail.com",
    name: "Абиров Жаныбек Болотбекович",
    numbers: PhoneNumbers(
      mainPhone: "+996700167167",
      whatsAppPhone: "+996700167167",
      workPhone: "+996500505423",
    ),
  ),
  EmployeModel(
    workPositon: "Генеральный директор",
    avatarUrl:
        "http://kenesh.kg/uploads/media/people_photo/0001/73/271022094648_image-26-10-22-05-39-9.jpeg",
    birthDate: DateTime.now(),
    deppartment: "Отдел безопасности",
    dimantsion: "Дирекиция безопасности",
    email: "abirov@gmail.com",
    name: "Абиров Жаныбек Болотбекович",
    numbers: PhoneNumbers(
      mainPhone: "+996700167167",
      whatsAppPhone: "+996700167167",
      workPhone: "+996500505423",
    ),
  ),
  EmployeModel(
    workPositon: "Генеральный директор",
    avatarUrl:
        "http://kenesh.kg/uploads/media/people_photo/0001/73/271022094648_image-26-10-22-05-39-9.jpeg",
    birthDate: DateTime.now(),
    deppartment: "Отдел безопасности",
    dimantsion: "Дирекиция безопасности",
    email: "abirov@gmail.com",
    name: "Абиров Жаныбек Болотбекович",
    numbers: PhoneNumbers(
      mainPhone: "+996700167167",
      whatsAppPhone: "+996700167167",
      workPhone: "+996500505423",
    ),
  ),
  EmployeModel(
    workPositon: "Генеральный директор",
    avatarUrl:
        "http://kenesh.kg/uploads/media/people_photo/0001/73/271022094648_image-26-10-22-05-39-9.jpeg",
    birthDate: DateTime.now(),
    deppartment: "Отдел безопасности",
    dimantsion: "Дирекиция безопасности",
    email: "abirov@gmail.com",
    name: "Абиров Жаныбек Болотбекович",
    numbers: PhoneNumbers(
      mainPhone: "+996700167167",
      whatsAppPhone: "+996700167167",
      workPhone: "+996500505423",
    ),
  ),
];
