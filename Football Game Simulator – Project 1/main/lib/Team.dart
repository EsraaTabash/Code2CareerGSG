import 'package:main/Player.dart';
import 'package:main/Trainer.dart';

class Team {
  String _name;
  Trainer _trainer;
  List<Player> _players;

  Team({
    required String name,
    required Trainer trainer,
    required List<Player> players,
  }) : _name = name,
       _players = players,
       _trainer = trainer;

  String get name => _name;
  Trainer get trainer => _trainer;
  List<Player> get players => _players;

  set name(String name) => _name = name;
  set trainer(Trainer trainer) => _trainer = trainer;
  set players(List<Player> players) => _players = players;
}
