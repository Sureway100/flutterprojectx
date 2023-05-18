import 'package:flutter/material.dart';
import 'package:test/main.dart';
import 'package:test/pages/weather/calendar.dart';
import 'package:test/pages/weather/temp.dart';

class NavDraw extends StatelessWidget {
  const NavDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Center(
                  child: Text(
                'UTILS',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ),
                );
              },
            ),
            const Divider(color: Color.fromARGB(255, 84, 84, 84)),
            ListTile(
              leading: const Icon(
                Icons.calendar_month,
                color: Colors.red,
              ),
              title: const Text('Calendar'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CalendarApp(),
                  ),
                );
              },
            ),
            const Divider(color: Color.fromARGB(255, 84, 84, 84)),
            ListTile(
              leading: const Icon(
                Icons.cloud,
                color: Colors.red,
              ),
              title: const Text('Weather report'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Temp(),
                  ),
                );
              },
            ),
            const Divider(color: Color.fromARGB(255, 84, 84, 84)),
            ListTile(
              leading: const Icon(
                Icons.calculate,
                color: Colors.red,
              ),
              title: const Text('Calculator'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            const Divider(color: Color.fromARGB(255, 84, 84, 84)),
          ],
        ),
      ),
    );
  }
}
