import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, List<String>> eventCategories = {
    'Music Concert': ['Rock Night', 'Jazz Evening', 'Classical Symphony'],
    'Tech Conference': ['AI Summit', 'Blockchain Expo', 'Cybersecurity Meet'],
    'Food Festival': ['Street Food Fiesta', 'Vegan Delight', 'BBQ Bash'],
    'Art Exhibition': ['Modern Art', 'Sculpture Show', 'Photography Gala']
  };

  final Map<String, IconData> eventIcons = {
    'Music Concert': Icons.music_note,
    'Tech Conference': Icons.computer,
    'Food Festival': Icons.fastfood,
    'Art Exhibition': Icons.palette,
  };

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover Events',
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(
          16,
        ),
        itemCount: eventCategories.keys.length,
        itemBuilder: (context, index) {
          String mainEvent = eventCategories.keys.elementAt(index);
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            elevation: 4,
            margin: EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(
                16,
              ),
              leading: Icon(
                eventIcons[mainEvent] ?? Icons.event,
                size: 40,
                color: Colors.deepPurple,
              ),
              title: Text(
                mainEvent,
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
                  '/booking',
                  arguments: {
                    'mainEvent': mainEvent,
                    'subEvents': eventCategories[mainEvent]
                  },
                ),
                child: Text(
                  'Explore',
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
