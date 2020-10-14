import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;
  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: <Widget>[
          Hero(

            tag: widget.imgPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
    
              left: 30,
              right: 30,
              bottom: 30,
              child: Container(
                height: 350,
                width: MediaQuery.of(context).size.width - 60,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
      
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "LAMINATED",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width-300,
                              //Burada Meida Query kullanmasak yazı taşardı
                              child: Text(
                              "One button V neck sling long-silvered waist female stitching dress",
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
         
                    Row(
                     

                      children: <Widget>[
                        Padding(
                         
                          padding: const EdgeInsets.only(left: 24.0),
                          child: Text(
                            "\$6500",
                            
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: 520,
                        ),
                        Container(
                        
                          height: 55,
                          width: 55,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
      
          Positioned(
            child: Container(
              height: 35,
              width: 150,
              color: Colors.black.withOpacity(0.4),
           
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "LAMINATED",
                      style: TextStyle(
                          fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white,)
                ],
              ),
            ),
            left: 80,
            bottom: 500,
          ),
        ],
      ),
    );
  }
}
