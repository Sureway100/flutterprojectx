import 'package:flutter/material.dart';
import '../../widgets/navigation.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const CalendarApp());
}

class CalendarApp extends StatefulWidget {
  const CalendarApp({super.key});

  @override
  State<CalendarApp> createState() => _CalendarAppState();
}

class _CalendarAppState extends State<CalendarApp> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calendar"),
        ),
        drawer: const NavDraw(),
        body: content(),
      ),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Text("Selected Day = ${today.toString().split(" ")[0]}"),
          TableCalendar(
            locale: "en_US",
            headerStyle: const HeaderStyle(
                formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            focusedDay: today,
            firstDay: DateTime.utc(1900, 01, 01),
            lastDay: DateTime.utc(2099, 12, 30),
            onDaySelected: _onDaySelected,
          ),
        ],
      ),
    );
  }
}
