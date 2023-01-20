import 'package:flutter/material.dart';
import 'package:./medinate/pages/RegPages/Donor_Registration.dart';
import 'package:./medinate/pages/RegPages/Blood_drive_registration.dart';
import 'package:./medinate/pages/RegPages/Organization_regristration.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});
            
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.flight)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Registration Page'),
          ),
          body:  TabBarView(
            children: [
              OrgReg(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
