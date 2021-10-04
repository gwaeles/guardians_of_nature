import 'package:flutter/material.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:guardians_of_nature/data/characters/sources/skill_point_service.dart';

class CharacterSkillsNotifier extends ChangeNotifier {
  CharacterSkillsNotifier({
    required this.skillsService,
  });

  final SkillPointsService skillsService;
  String name = '';

  int get skillPoints => skillsService.skillPoints;
  int get health => skillsService.health;
  int get attack => skillsService.attack;
  int get defense => skillsService.defense;
  int get magik => skillsService.magik;

  void decrementHealth() {
    if (skillsService.decrementHealth()) {
      notifyListeners();
    }
  }

  void incrementHealth() {
    if (skillsService.incrementHealth()) {
      notifyListeners();
    }
  }

  void decrementAttack() {
    if (skillsService.decrementAttack()) {
      notifyListeners();
    }
  }

  void incrementAttack() {
    if (skillsService.incrementAttack()) {
      notifyListeners();
    }
  }

  void decrementDefense() {
    if (skillsService.decrementDefense()) {
      notifyListeners();
    }
  }

  void incrementDefense() {
    if (skillsService.incrementDefense()) {
      notifyListeners();
    }
  }

  void decrementMagik() {
    if (skillsService.decrementMagik()) {
      notifyListeners();
    }
  }

  void incrementMagik() {
    if (skillsService.incrementMagik()) {
      notifyListeners();
    }
  }
}
