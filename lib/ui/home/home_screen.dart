import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guardians_of_nature/data/characters/entities/character.dart';
import 'package:guardians_of_nature/data/characters/providers/characters_bloc.dart';
import 'package:guardians_of_nature/data/characters/states/characters_state.dart';
import 'package:guardians_of_nature/data/user/providers/auth_bloc.dart';
import 'package:guardians_of_nature/ui/widgets/app_scaffold.dart';

import 'home_screen_providers.dart';

///
/// Responsabilities :
/// * Display the user's characters
/// * User can log out
///
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenProviders(
      child: AppScaffold(
        appBar: AppBar(
          title: Text('home_screen_title'.tr()),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => _onSignOutRequest(context),
                child: const Icon(
                  Icons.logout,
                ),
              ),
            )
          ],
        ),
        body: const _BodyWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(
            context,
            '/newcharacter',
          ),
          tooltip: 'New character',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  ///
  /// --- EVENTS --- ///
  ///

  void _onSignOutRequest(
    BuildContext context,
  ) {
    context.read<AuthBloc>().signOut();
  }
}

///
/// --- WIDGETS --- ///
///

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, state) {
        if (state is CharactersError) {
          return const Center(
            child: Text('error'),
          );
        }

        if (state is CharactersIdle) {
          return const Center(child: CircularProgressIndicator());
        }

        final data = (state as CharactersLoaded).characters;

        if (data.isEmpty) {
          return const _NoCharacterWidget();
        }

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SizedBox(
                    width: 40,
                    child: Center(
                      child: Text(
                        'Rank',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return _CharacterWidget(
                    character: data[index],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _CharacterWidget extends StatelessWidget {
  final Character character;

  const _CharacterWidget({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/character',
            arguments: character.reference);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                character.nickname,
              ),
            ),
            SizedBox(
              width: 40,
              child: Center(
                child: Text(
                  '${character.rank}',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NoCharacterWidget extends StatelessWidget {
  const _NoCharacterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'home_no_character_title'.tr(),
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'home_no_character_subtitle'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
