import 'package:flutter/material.dart';
import 'package:guardians_of_nature/data/characters/use_cases/skill_point_use_case.dart';

class CharacterSkillsNotifier extends ChangeNotifier {
  CharacterSkillsNotifier({
    required this.useCase,
  });

  final SkillPointsUseCase useCase;
  String name = '';

  int get skillPoints => useCase.skillPoints;
  int get health => useCase.health;
  int get attack => useCase.attack;
  int get defense => useCase.defense;
  int get magik => useCase.magik;

  void decrementHealth() {
    if (useCase.decrementHealth()) {
      notifyListeners();
    }
  }

  void incrementHealth() {
    if (useCase.incrementHealth()) {
      notifyListeners();
    }
  }

  void decrementAttack() {
    if (useCase.decrementAttack()) {
      notifyListeners();
    }
  }

  void incrementAttack() {
    if (useCase.incrementAttack()) {
      notifyListeners();
    }
  }

  void decrementDefense() {
    if (useCase.decrementDefense()) {
      notifyListeners();
    }
  }

  void incrementDefense() {
    if (useCase.incrementDefense()) {
      notifyListeners();
    }
  }

  void decrementMagik() {
    if (useCase.decrementMagik()) {
      notifyListeners();
    }
  }

  void incrementMagik() {
    if (useCase.incrementMagik()) {
      notifyListeners();
    }
  }
}
