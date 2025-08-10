class Stadium {
  String _name;
  String _location;
  int _capacity;

  Stadium({
    required String name,
    required String location,
    required int capacity,
  }) : _name = name,
       _capacity = capacity,
       _location = location;

  set name(String name) => _name = name;
  set location(String location) => _location = location;
  set capacity(int capacity) => _capacity = capacity;

  String get name => _name;
  int get capacity => _capacity;
  String get location => _location;
}
