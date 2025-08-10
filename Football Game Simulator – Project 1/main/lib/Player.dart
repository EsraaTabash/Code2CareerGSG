class Player {
  String _name;
  int _position;
  int _id;
  int _power;
  int _age;
  String _nationality;

  Player({
    required int id,
    required String name,
    required int age,
    required String nationality,
    required int position,
    required int power,
  }) : _name = name,
       _age = age,
       _id = id,
       _nationality = nationality,
       _position = position,
       _power = power;

  String get name => _name;
  String get nationality => _nationality;
  int get id => _id;
  int get age => _age;
  int get position => _position;
  int get power => _power;

  set name(String name) => _name = name;
  set nationality(String nationality) => _nationality = nationality;
  set id(int id) => _id = id;
  set age(int age) => _age = age;
  set power(int power) => _power = power;
  set position(int position) => _position = position;
}
