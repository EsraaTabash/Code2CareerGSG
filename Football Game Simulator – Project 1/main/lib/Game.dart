import 'dart:math';

import 'package:main/Stadium.dart';
import 'package:main/Team.dart';

class Game {
  Team _firstTeam;
  Team _secondTeam;
  Stadium _stadium;

  Game({
    required Team firstTeam,
    required Team secondTeam,
    required Stadium stadium,
  }) : _firstTeam = firstTeam,
       _stadium = stadium,
       _secondTeam = secondTeam;

  set firstTeam(Team firstTeam) => _firstTeam = firstTeam;
  set secondTeam(Team secondTeam) => _secondTeam = secondTeam;
  set stadium(Stadium stadium) => _stadium = stadium;

  Team get firstTeam => _firstTeam;
  Team get secondTeam => _secondTeam;
  Stadium get stadium => _stadium;

  int getTeamPower(Team team) {
    //1.player
    int playersPower = 0;
    for (var player in team.players) {
      playersPower += player.power;
    }
    //2.trainer
    int trainerPower = team.trainer.experience;

    //3.lucky factor
    int random = Random().nextInt(10);

    //totalPower
    return playersPower + trainerPower + random;
  }

  void playMatch() {
    print(
      '\nStadium: ${_stadium.name} in ${_stadium.location} (Capacity: ${_stadium.capacity})\n',
    );
    print('Match:\n${_firstTeam.name} VS. ${_secondTeam.name}');

    int powerTeamOne = getTeamPower(_firstTeam);
    int powerTeamTwo = getTeamPower(_secondTeam);

    print('\nTeam Powers:');
    print('${_firstTeam.name}: $powerTeamOne');
    print('${_secondTeam.name}: $powerTeamTwo\n');

    print('🏆 Result:');
    if (powerTeamOne > powerTeamTwo) {
      print(' ${_firstTeam.name} wins!..');
    } else if (powerTeamTwo > powerTeamOne) {
      print(' ${_secondTeam.name} wins!...');
    } else {
      print(' It\'s a draw!..');
    }
  }
}
