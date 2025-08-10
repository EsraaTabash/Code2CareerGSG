class Trainer {
  String _name;
  int _experience;

  Trainer({required String name, required int experience})
    : _experience = experience,
      _name = name;

  set name(String name) => _name = name;
  set experience(int experience) => _experience = experience;

  String get name => _name;
  int get experience => _experience;
}
