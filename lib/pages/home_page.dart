import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_search/dropdown_search.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Medinate.com"),
          leading: IconButton(
            icon: Image.asset(
              'images/medinate.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            onPressed: () {},
          )),
      body: Container(
        child: ListView(children: [
          DropdownSearch<String>(
    popupProps: PopupProps.menu(
        showSelectedItems: true,
        disabledItemFn: (String s) => s.startsWith('I'),
    ),
    items: ["A+","A-","B+","B-","AB+","AB-","O+","O-"],
    dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
            labelText: "Menu mode",
            hintText: "country in menu mode",
        ),
    ),
    onChanged: print,
    selectedItem: "Brazil",
),
TextButton(
  style: TextButton.styleFrom(
    foregroundColor: Colors.blue,
    disabledForegroundColor: Colors.red,
  ),
  onPressed: null,
  child: Text('Search Blood near you'),
),

          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/images/poster1.jpg'),
                    
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/images/poster2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/images/poster3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 380.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ]),
      ),
    );
  }
}
