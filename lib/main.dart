import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:moda_app2/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Moda Uygulaması",
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController myController;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    myController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Montserrat",
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      bottomNavigationBar: Material(
       
        color: Colors.white,
        child: TabBar(controller: myController,

            tabs: [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
            ]),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          //ÜST TARAFTAKİ STORY KISMI
          Container(
            height: 140,
            width: double.infinity,
      
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
             
              children: <Widget>[
               
                listeElemani(
                  'assets/model1.jpeg',
                  'assets/chanellogo.jpg',
                ),
                SizedBox(
                  width: 30,
                ),
                
                listeElemani(
                  'assets/model2.jpeg',
                  'assets/louisvuitton.jpg',
                ),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                  'assets/model3.jpeg',
                  'assets/chloelogo.png',
                ),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                  'assets/model1.jpeg',
                  'assets/chanellogo.jpg',
                ),
                SizedBox(
                  width: 30,
                ),
                //SizedBox a genişlik olarak aralık koyduğumuzda soldan sağa öğelerin arasında boşluk oluşturacak.
                listeElemani(
                  'assets/model2.jpeg',
                  'assets/louisvuitton.jpg',
                ),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                  'assets/model3.jpeg',
                  'assets/chloelogo.png',
                ),
                SizedBox(
                  width: 30,
                ),
          
                listeElemani(
                  'assets/model2.jpeg',
                  'assets/louisvuitton.jpg',
                ),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                  'assets/model3.jpeg',
                  'assets/chloelogo.png',
                ),
                SizedBox(
                  width: 30,
                ),

                listeElemani(
                  'assets/model2.jpeg',
                  'assets/louisvuitton.jpg',
                ),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                  'assets/model3.jpeg',
                  'assets/chloelogo.png',
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          //CARD KISMI
          Padding(
            
            padding: const EdgeInsets.all(16.0),
            child: Material(
              
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
             
              child: Container(
                height: 850,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  
                  children: <Widget>[
                    
                    //5 ÖĞENİN 1. ELEMANI
                    Row(
                      
                      children: <Widget>[
                        Container(
                         
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage('assets/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          
                          width: MediaQuery.of(context).size.width - 200,
                         
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          
                            children: <Widget>[
                              Text("Daisy",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 34,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 45,
                    ),
                    Text(

                      "This Official website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very temparament and is reccomend to friends",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),

                    //BURASI YAPININ 5/3. ÖĞESİ OLACAK

                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      //Öğenin 3. ELAMANI

                      children: <Widget>[
                        InkWell(
                          //1. RESİM SOLDAKİ TEK

                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid1.jpeg')));

                          },
                          child: Hero(
  
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(

                              height: 400,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage('assets/modelgrid1.jpeg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(

                          children: <Widget>[
                            InkWell(
                              //2.RESİM SAĞDAKİ ÜSTTEKİ

                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detay(
                                            imgPath:
                                                'assets/modelgrid2.jpeg')));

                              },
                              child: Hero(

                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  //Üstteki REsim
                                  height: 185,
                                  width: (MediaQuery.of(context).size.width -
                                          190) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid2.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              //3. RESİM SAĞDAKİ ALTTAKİ

                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detay(
                                            imgPath:
                                                'assets/modelgrid3.jpeg')));

                              },
                              child: Hero(

                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  //Alttaki resim
                                  height: 185,
                                  width: (MediaQuery.of(context).size.width -
                                          190) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //ÖĞENİN 5/4. Kısımlar
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          //1.ETİKET 
                          height: 40,
                          width: 135,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "# LouisVuitton",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 13,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          //2.ETİKET 
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "# Chloe",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 13,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //5/5 
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                   
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.reply,
                          color: Colors.grey,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1.7k",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.mode_comment,
                          color: Colors.grey,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "325",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 400,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "2.3k",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(

          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
        
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
 
              ),
            ),
            Positioned(
 
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.contain)),
                
              ),
            ),
          ],
        ),
        SizedBox(
   
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(

            child: Text(
              "Follow",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
