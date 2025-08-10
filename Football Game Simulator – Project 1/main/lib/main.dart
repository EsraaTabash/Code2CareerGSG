import 'package:main/Player.dart';
import 'package:main/Trainer.dart';
import 'package:main/Team.dart';
import 'package:main/Stadium.dart';
import 'package:main/Game.dart';

void main() {
  List<Player> team1Players = [
    Player(
      id: 1,
      name: 'Ali',
      age: 22,
      nationality: 'Palestinian',
      position: 9,
      power: 80,
    ),
    Player(
      id: 2,
      name: 'Omar',
      age: 24,
      nationality: 'Jordanian',
      position: 10,
      power: 75,
    ),
  ];

  List<Player> team2Players = [
    Player(
      id: 3,
      name: 'Sami',
      age: 23,
      nationality: 'Egyptian',
      position: 8,
      power: 77,
    ),
    Player(
      id: 4,
      name: 'Hani',
      age: 25,
      nationality: 'Tunisian',
      position: 11,
      power: 70,
    ),
  ];

  Trainer trainer1 = Trainer(name: 'Coach Ahmad', experience: 10);
  Trainer trainer2 = Trainer(name: 'Coach Sara', experience: 12);

  Team team1 = Team(
    name: 'El-Nashama',
    trainer: trainer1,
    players: team1Players,
  );
  Team team2 = Team(
    name: 'Asood El-Sahraa',
    trainer: trainer2,
    players: team2Players,
  );

  Stadium stadium = Stadium(
    name: 'National Arena',
    location: 'Gaza',
    capacity: 30000,
  );

  Game game = Game(firstTeam: team1, secondTeam: team2, stadium: stadium);

  game.playMatch();
}
