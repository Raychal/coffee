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
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[800],
                        boxShadow: [BoxShadow(
                          offset: Offset(2,3),
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5
                        )]
                      ),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.1)
                      ),
                      child: Center(
                        child: Image.asset('lib/images/profile.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Find the best  ",style: GoogleFonts.raleway(fontWeight: FontWeight.w400,fontSize: 34)),
                        Text("coffee for you",style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 34),)
                      ],
                    ),
                  ],
                )
              ),
              SizedBox(height: 45,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Find a burger",
                    filled: true,
                    fillColor: Colors.grey.shade800,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 30,
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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Most Popular",style: GoogleFonts.raleway(fontSize: 22,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: coffeeList.length,
                      itemBuilder: (context, index) {
                        final Coffee coffee = coffeeList[index];
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(coffee: coffee)));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Container(
                              padding: EdgeInsets.all(12),
                              width: 170,
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
                                          style: TextStyle(fontSize: 12),
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
                                            color: Colors.green[800],
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
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}