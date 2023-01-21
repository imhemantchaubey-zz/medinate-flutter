import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_search/dropdown_search.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: ExactAssetImage('assets/images/poster1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: ExactAssetImage('assets/images/poster2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
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
      bottomNavigationBar: Row(
        children: [
          Material(
            color: Color.fromARGB(255, 160, 44, 44),
            child: InkWell(
              onTap: () {
                //print('called on tap');
              },
              child: const SizedBox(
                height: kToolbarHeight,
                width: 500 ,
                child: Center(
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: const Color(0xffff8906),
              child: InkWell(
                onTap: () {
                  //print('called on tap');
                },
                child: const SizedBox(
                  height: kToolbarHeight,
                  width: 500,
                  child: Center(
                    child: Text(
                      'Donate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
