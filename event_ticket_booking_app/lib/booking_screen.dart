import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String mainEvent = args['mainEvent'];
    final List<String> subEvents = args['subEvents'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select $mainEvent Event',
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(
          16,
        ),
        itemCount: subEvents.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(
              vertical: 8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(
                16,
              ),
              title: Text(
                subEvents[index],
                style: Theme.of(context).textTheme.titleLarge,
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/ticket',
                  arguments: '$mainEvent - ${subEvents[index]}',
                ),
                child: Text(
                  'Book',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
