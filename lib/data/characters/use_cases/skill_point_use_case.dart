import 'dart:math';

class SkillPointsUseCase {
  final int initialHealth;
  final int initialAttack;
  final int initialDefense;
  final int initialMagik;

  SkillPointsUseCase({
    this.skillPoints = 12,
    this.initialHealth = 10,
    this.initialAttack = 0,
    this.initialDefense = 0,
    this.initialMagik = 0,
  });

  int skillPoints;

  int _additionnalHealth = 0;
  int _additionnalAttack = 0;
  int _additionnalDefense = 0;
  int _additionnalMagik = 0;
  final List<int> _additionnalAttackCost = [];
  final List<int> _additionnalDefenseCost = [];
  final List<int> _additionnalMagikCost = [];

  int get health => initialHealth + _additionnalHealth;
  int get attack => initialAttack + _additionnalAttack;
  int get defense => initialDefense + _additionnalDefense;
  int get magik => initialMagik + _additionnalMagik;

  bool decrementHealth() {
    if (_additionnalHealth > 0) {
      _additionnalHealth--;
      skillPoints++;
      return true;
    }
    return false;
  }

  bool incrementHealth() {
    if (skillPoints > 0) {
      _additionnalHealth++;
      skillPoints--;
      return true;
    }
    return false;
  }

  bool decrementAttack() {
    if (_additionnalAttack > 0 && _additionnalAttackCost.isNotEmpty) {
      int cost = _additionnalAttackCost.removeLast();
      _additionnalAttack--;
      skillPoints += cost;
      return true;
    }
    return false;
  }

  bool incrementAttack() {
    int cost = max(1, (attack / 5).ceil());
    if (skillPoints >= cost) {
      _additionnalAttackCost.add(cost);
      _additionnalAttack++;
      skillPoints -= cost;
      return true;
    }
    return false;
  }

  bool decrementDefense() {
    if (_additionnalDefense > 0 && _additionnalDefenseCost.isNotEmpty) {
      int cost = _additionnalDefenseCost.removeLast();
      _additionnalDefense--;
      skillPoints += cost;
      return true;
    }
    return false;
  }

  bool incrementDefense() {
    int cost = max(1, (defense / 5).ceil());
    if (skillPoints >= cost) {
      _additionnalDefenseCost.add(cost);
      _additionnalDefense++;
      skillPoints -= cost;
      return true;
    }
    return false;
  }

  bool decrementMagik() {
    if (_additionnalMagik > 0 && _additionnalMagikCost.isNotEmpty) {
      int cost = _additionnalMagikCost.removeLast();
      _additionnalMagik--;
      skillPoints += cost;
      return true;
    }
    return false;
  }

  bool incrementMagik() {
    int cost = max(1, (magik / 5).ceil());
    if (skillPoints >= cost) {
      _additionnalMagikCost.add(cost);
      _additionnalMagik++;
      skillPoints -= cost;
      return true;
    }
    return false;
  }
}
