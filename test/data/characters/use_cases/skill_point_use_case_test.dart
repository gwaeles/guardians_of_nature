import 'package:flutter_test/flutter_test.dart';
import 'package:guardians_of_nature/data/characters/use_cases/skill_point_use_case.dart';

void main() {
  test('skill point use case ...', () {
    //GIVEN
    final service = SkillPointsUseCase();

    expect(service.skillPoints, 12);
    expect(service.health, 10);
    expect(service.attack, 0);

    //WHEN
    service.incrementAttack();

    //THEN
    expect(service.skillPoints, 11);
    expect(service.health, 10);
    expect(service.attack, 1);

    //WHEN
    service.decrementAttack();

    //THEN
    expect(service.skillPoints, 12);
    expect(service.health, 10);
    expect(service.attack, 0);
  });

  test('skill point use case complex ...', () {
    //GIVEN
    final service = SkillPointsUseCase(
      initialHealth: 44,
      initialDefense: 9,
      initialAttack: 3,
      initialMagik: 32,
    );

    //WHEN
    service.incrementHealth();

    //THEN
    expect(service.skillPoints, 11);
    expect(service.health, 45);

    //WHEN
    service.incrementAttack();

    //THEN
    expect(service.skillPoints, 10);
    expect(service.attack, 4);

    //WHEN
    service.incrementDefense();

    //THEN
    expect(service.skillPoints, 8);
    expect(service.defense, 10);

    //WHEN
    service.incrementMagik();

    //THEN
    expect(service.skillPoints, 1);
    expect(service.magik, 33);

    //WHEN
    service.decrementAttack();

    //THEN
    expect(service.skillPoints, 2);
    expect(service.attack, 3);

    //WHEN
    service.decrementDefense();

    //THEN
    expect(service.skillPoints, 4);
    expect(service.defense, 9);

    //WHEN
    service.decrementMagik();

    //THEN
    expect(service.skillPoints, 11);
    expect(service.magik, 32);

    //WHEN
    service.decrementHealth();

    //THEN
    expect(service.skillPoints, 12);
    expect(service.health, 44);
  });
}
