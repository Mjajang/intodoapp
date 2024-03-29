import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intodo/src/persentation/blocs/view_home/view_home_cubit.dart';
import 'package:intodo/src/persentation/routes/routes.dart';
import 'package:intodo/src/persentation/screen/auth/splash_screen.dart';
import 'package:intodo/src/persentation/screen/home/home_screen.dart';
import 'package:intodo/src/persentation/screen/note/note_screen.dart';

import 'src/values/constants/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));

    return BlocProvider(
      create: (context) => ViewHomeCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        themeMode: ThemeMode.system,
        initialRoute: '/',
        routes: {
          Routes.splashScreen: (context) => const SplashScreen(),
          Routes.homeScreen: (context) => HomeScreen(),
          Routes.noteScreen: (context) => const NoteScreen(),
        },
      ),
    );
  }
}
