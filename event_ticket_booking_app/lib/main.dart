import 'package:event_ticket_booking_app/booking_screen.dart';
import 'package:event_ticket_booking_app/home_screen.dart';
import 'package:event_ticket_booking_app/ticket_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Event Ticket Booking App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/booking': (context) => BookingScreen(),
        '/ticket': (context) => TicketScreen(),
      },
    );
  }
}
