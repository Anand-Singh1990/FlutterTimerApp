import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Timer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clock'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alarm),
            tooltip: 'Add Alarm',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.timer),
            tooltip: 'Timer',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: FlutterAnalogClock(
          dateTime: DateTime.now(),
          dialPlateColor: Colors.grey[900],
          hourHandColor: Colors.white70,
          minuteHandColor: Colors.white70,
          secondHandColor: Colors.red,
          numberColor: Colors.white70,
          borderColor: Colors.white54,
          tickColor: Colors.white38,
          centerPointColor: Colors.red,
          showBorder: false,
          showTicks: true,
          showMinuteHand: true,
          showSecondHand: true,
          showNumber: true,
          borderWidth: 8.0,
          hourNumberScale: .4,
          hourNumbers: [
            'I',
            'II',
            'III',
            'IV',
            'V',
            'VI',
            'VII',
            'VIII',
            'IX',
            'X',
            'XI',
            'XII'
          ],
          isLive: true,
          width: 400.0,
          height: 400.0,
          decoration: const BoxDecoration(),
          child: Text(''),
        ),
      ),
    );
  }
}

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      ));
}
