import 'dart:io';
import 'dart:math';

import 'package:main/Player.dart';
import 'package:main/Trainer.dart';
import 'package:main/Team.dart';
import 'package:main/Stadium.dart';
import 'package:main/Game.dart';

void main() {
  print('Enter name of first team:');
  String team1Name = stdin.readLineSync()!;

  print('Enter name of second team:');
  String team2Name = stdin.readLineSync()!;

  List<Player> team1Players = [];
  print('Enter number of players for $team1Name:');
  int numPlayers1 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < numPlayers1; i++) {
    print('Enter name of player ${i + 1} for $team1Name:');
    String name = stdin.readLineSync()!;
    print('Enter age of $name:');
    int age = int.parse(stdin.readLineSync()!); 
    print('Enter power of $name:');
    int power = int.parse(stdin.readLineSync()!); 
    print('Enter nationality of $name:'); 
    String nationality = stdin.readLineSync()!;
    print('Enter position of $name:'); 
    int position = int.parse(stdin.readLineSync()!); 
    team1Players.add(Player(id: i + 1, name: name, age: age, nationality: nationality, position: position, power: power));
  }

  List<Player> team2Players = [];
  print('Enter number of players for $team2Name:');
  int numPlayers2 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < numPlayers2; i++) {
    print('Enter name of player ${i + 1} for $team2Name:');
    String name = stdin.readLineSync()!;
    print('Enter age of $name:');
    int age = int.parse(stdin.readLineSync()!); 
    print('Enter power of $name:');
    int power = int.parse(stdin.readLineSync()!); 
    print('Enter nationality of $name:'); 
    String nationality = stdin.readLineSync()!;
    print('Enter position of $name:'); 
    int position = int.parse(stdin.readLineSync()!);
    team2Players.add(Player(id: i + 1, name: name, age: age, nationality: nationality, position: position, power: power));
  }

  print('Enter name of coach for $team1Name:');
  String coach1Name = stdin.readLineSync()!;
  print('Enter experience of coach for $team1Name:');
  int coach1Experience = int.parse(stdin.readLineSync()!); 
  Trainer trainer1 = Trainer(name: coach1Name, experience: coach1Experience);

  print('Enter name of coach for $team2Name:');
  String coach2Name = stdin.readLineSync()!;
  print('Enter experience of coach for $team2Name:');
  int coach2Experience = int.parse(stdin.readLineSync()!);
  Trainer trainer2 = Trainer(name: coach2Name, experience: coach2Experience);

  print('Enter stadium name:');
  String stadiumName = stdin.readLineSync()!;
  print('Enter stadium location:'); 
  String stadiumLocation = stdin.readLineSync()!;
  print('Enter stadium capacity:');
  int stadiumCapacity = int.parse(stdin.readLineSync()!); 
  Stadium stadium = Stadium(name: stadiumName, location: stadiumLocation, capacity: stadiumCapacity);

  Team team1 = Team(name: team1Name, trainer: trainer1, players: team1Players);
  Team team2 = Team(name: team2Name, trainer: trainer2, players: team2Players);

  Game game = Game(firstTeam: team1, secondTeam: team2, stadium: stadium);

  game.playMatch();

  /* 
  Sample output for the program (example):

  Enter name of first team:
  El Nashama
  Enter name of second team:
  Osood El Sahraa
  Enter number of players for El Nashama:
  2
  Enter name of player 1 for El Nashama:
  Ali
  Enter age of Ali:
  22
  Enter power of Ali:
  80
  Enter nationality of Ali:
  Palestinian
  Enter position of Ali:
  9
  Enter name of player 2 for El Nashama:
  Omar
  Enter age of Omar:
  24
  Enter power of Omar:
  75
  Enter nationality of Omar:
  Jordanian
  Enter position of Omar:
  10
  Enter number of players for Osood El Sahraa:
  2
  Enter name of player 1 for Osood El Sahraa:
  Sami
  Enter age of Sami:
  23
  Enter power of Sami:
  77
  Enter nationality of Sami:
  Egyptian
  Enter position of Sami:
  8
  Enter name of player 2 for Osood El Sahraa:
  Hani
  Enter age of Hani:
  25
  Enter power of Hani:
  70
  Enter nationality of Hani:
  Tunisian
  Enter position of Hani:
  11
  Enter name of coach for El Nashama:
  Coach Ahmad
  Enter experience of coach for El Nashama:
  10
  Enter name of coach for Osood El Sahraa:
  Coach Sara
  Enter experience of coach for Osood El Sahraa:
  12
  Enter stadium name:
  National Arena
  Enter stadium location:
  Gaza
  Enter stadium capacity:
  30000

  Stadium: National Arena in Gaza (Capacity: 30000)
  Match: El Nashama VS Osood El Sahraa
  Team Powers:
  El Nashama: 160
  Osood El Sahraa: 147

  Result:
  El Nashama wins!
  */


}
