import 'package:flutter/material.dart';
import 'package:pomodoro/models/timer_model.dart';
import 'package:pomodoro/screens/home_page.dart';
import 'package:pomodoro/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const Pomodoro());

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TimerModel>(
          create: (context) => TimerModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro',
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
        },
      ),
    );
  }
}
