import 'package:flutter/material.dart';
import 'package:learning/Booking%20App/booking_profile.dart';
import 'package:learning/Booking%20App/main_page.dart';
import 'package:learning/Booking%20App/notification_page.dart';
import 'package:learning/Booking%20App/search_page.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: const BoxDecoration(),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.flight,
                    color: Colors.grey[500],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey[500],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[500],
                  ),
                )
              ]),
          body: const TabBarView(
            children: [
              MainPage(),
              SearchPage(),
              NotificationPage(),
              BookingProfile(),
            ],
          ),
        ));
  }
}
