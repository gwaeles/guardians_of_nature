import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guardians_of_nature/ui/battle_room/battle_room_screen.dart';
import 'package:guardians_of_nature/ui/character/character_screen.dart';
import 'package:guardians_of_nature/ui/character/new_character_screen.dart';
import 'package:guardians_of_nature/ui/home/home_screen.dart';
import 'package:guardians_of_nature/ui/launcher/launcher_screen.dart';

import 'main_providers.dart';

List<Locale> appLocales = [
  const Locale('en'),
  const Locale('fr'),
];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: appLocales,
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainProviders(
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'app_name'.tr(),
        routes: {
          "/launcher": (context) => const LauncherScreen(),
          "/home": (context) => const HomeScreen(),
          "/character": (context) => const CharacterScreen(),
          "/newcharacter": (context) => const NewCharacterScreen(),
          "/battleroom": (context) => const BattleRoomScreen(),
        },
        initialRoute: "/launcher",
      ),
    );
  }
}
