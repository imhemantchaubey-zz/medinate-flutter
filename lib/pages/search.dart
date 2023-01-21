import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medinate/pages/home_page.dart';
import 'package:medinate/pages/organization_registration_page.dart';
import 'package:flutter/material.dart';
class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Blood Avalibility"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              _navigateToHomeScreen(context);
            },
          )
          )
    );
  
}
}
void _navigateToHomeScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
  }