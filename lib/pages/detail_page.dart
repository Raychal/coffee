import 'package:coffee_app/model/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.coffee}) : super(key: key);

  final Coffee coffee;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  bool heart = false;

  int total = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Image.asset('${widget.coffee.imageAsset}'),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5.0)),
                            Container(
                              width: 200,
                              height: 50,
                              child: Text('${widget.coffee.title}',
                                style: GoogleFonts.manrope(fontSize: 35,
                                    fontWeight: FontWeight.w700,
                                    wordSpacing: 2),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 100)),
                                Container(
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400.withOpacity(0.75),
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.orange,
                                        size: 20,),
                                      SizedBox(width: 3,),
                                      Text('${widget.coffee.rating}',
                                        style: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w400),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(5.0)),
                            Text('${widget.coffee.subtitle}', style: GoogleFonts.manrope(
                                fontSize: 18, fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(5.0)),
                            Text("Size", style: GoogleFonts.manrope(
                                fontSize: 18, fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(5.0)),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("S", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 5,),
                                    Text("Small", style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("M", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 5,),
                                    Text("Medium", style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 4
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("L", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 5,),
                                    Text("Large", style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.all(5.0)),
                            Text("Description", style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600, fontSize: 18),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          
                          padding: EdgeInsets.all(5.0),
                          child: Text('${widget.coffee.desc}'),
                        ),
                        SizedBox(height: 10,),

                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          height: 80,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.grey.withOpacity(0), Colors.transparent]
                              )
                          ),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(5.0)),
                              Text("Rp. ", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                              Text("${widget.coffee.price}",
                                style: GoogleFonts.manrope(
                                    fontSize: 38, fontWeight: FontWeight.w600),),
                              SizedBox(width: 85,),
                              Container(
                                width: 125,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                child: Center(
                                  child: GestureDetector(
                                      onTap: () {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text("Success added to cart"),
                                              backgroundColor: Colors.green,
                                              shape: StadiumBorder(),
                                              behavior: SnackBarBehavior.floating,));
                                      },
                                      child: Text("Add to cart",
                                        style: TextStyle(color: Colors.white),)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_rounded)),
                      Text("Details", style: GoogleFonts.raleway(
                          fontSize: 26, fontWeight: FontWeight.w500),),
                      IconButton(onPressed: () {
                        if (heart == false) {
                          setState(() {
                            heart = true;
                          });
                        } else {
                          setState(() {
                            heart = false;
                          });
                        }
                      },
                          icon: heart == false ? Icon(
                              Icons.favorite_border_outlined) : Icon(
                            Icons.favorite, color: Colors.red,))
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}