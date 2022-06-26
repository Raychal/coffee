import 'package:coffee_app/utils/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/coffee.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // list of coffee types
  final List coffeeType = [
    [
      'Americano',
      true,
    ],
    [
      'Cappuccino',
      false,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Tea',
      false,
    ],
  ];

  // user tapped on coffee types
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i=0; i<coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(children: [
        // Find the best coffee for you
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Find the best coffee for you',
            style: GoogleFonts.bebasNeue(
              fontSize: 56,
            ),
          ),
        ),

        SizedBox(height: 25),

        // Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Find your coffee...',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
              ),
            ),
          ),
        ),

        SizedBox(height: 25),
        
        // Horizontal listview of coffee type
        Container(
          height: 50,
          child: ListView.builder(
            itemCount: coffeeType.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CoffeeType(
                coffeeType: coffeeType[index][0],
                isSelected: coffeeType[index][1],
                onTap: () {
                  coffeeTypeSelected(index);
                },
              );
            }
          ),
        ),
        // Horizontal listview of coffee tiles
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final Coffee coffee = coffeeList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(coffee: coffee);
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 75),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black54,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // coffee image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(coffee.imageAsset),
                        ),
                        //coffee name
                        Padding(
                          padding: 
                            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                coffee.title,
                                style: TextStyle(fontSize: 14),
                              ),

                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                coffee.subtitle,
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          ),
                        ),
                        
                        // price
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rp. ' + coffee.price),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: coffeeList.length,
          ),
        ),
      ]),
    );
  }
}