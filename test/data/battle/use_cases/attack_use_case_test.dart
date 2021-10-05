import 'package:flutter_test/flutter_test.dart';
import 'package:guardians_of_nature/data/battle/entities/battle.dart';
import 'package:guardians_of_nature/data/battle/repositories/battles_repository.dart';
import 'package:guardians_of_nature/data/battle/use_cases/attack_use_case.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:guardians_of_nature/data/characters/repositories/characters_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'attack_use_case_test.mocks.dart';

@GenerateMocks([
  BattlesRepository,
  CharactersRepository,
  Battle,
])
void main() {
  late MockBattlesRepository battlesRepository;
  late MockCharactersRepository charactersRepository;

  setUp(() {
    battlesRepository = MockBattlesRepository();
    charactersRepository = MockCharactersRepository();
  });

  test('attack use case ...', () {
    //GIVEN
    final useCase = AttackUseCase(
      battlesRepository: battlesRepository,
      charactersRepository: charactersRepository,
    );
    const battle = Battle(
      playerOneId: '1',
      playerTwoId: '2',
      characterOne: Character(
        userId: '1',
        nickname: 'Bob',
      ),
      characterTwo: Character(
        userId: '2',
        nickname: 'John',
      ),
    );

    //WHEN
    useCase.attack(
      isPlayerOne: true,
      battle: battle,
    );

    //THEN
    verify(
      battlesRepository.update(
        battle: anyNamed('battle'),
      ),
    );
  });
}
