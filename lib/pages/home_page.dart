import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'Item 1';   
  
  // List of items in our dropdown menu
  var items = [    
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text("Medinate.com"),
        leading:IconButton( 
          icon:Image.asset('images/logo.jpeg', fit: BoxFit.contain,height: 32,),
          onPressed: (){},
        )
      ),
      
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
