import 'package:my_first_app/detail.dart';
import 'package:flutter/material.dart';

import 'model.dart';

List animes = [
  Model(img: "assets/images/your-name.webp", name: "Your name"),
  Model(img: "assets/images/tokyo-revengers.jpg", name: "Tokyo revengers"),
  Model(img: "assets/images/naruto.jpg", name: "Naruto"),
  Model(img: "assets/images/jujutsu.jpg", name: "Jujutsu kaisen"),
  Model(img: "assets/images/your-name.webp", name: "Your name"),
  Model(img: "assets/images/tokyo-revengers.jpg", name: "Tokyo revengers"),
  Model(img: "assets/images/naruto.jpg", name: "Naruto"),
  Model(img: "assets/images/jujutsu.jpg", name: "Jujutsu kaisen"),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/animes.png"),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("iMax", style: TextStyle(
                      color: Color(0xff2ecc71),
                      fontSize: 20,
                    ),)
                  ],
                ),
                Center(
                  child: Image.asset("assets/images/hero.png"),
                ),
                Text(
                  "Welcome to iMax",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  "Embark on a Journey of Endless\nStories and Epic Adventures.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 11),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff191919),
                      ),
                      child: Text(
                        "Explore Now",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 11),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff2ecc71),
                      ),
                      child: Text(
                        "Start Watching",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20),
                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff121012),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color:Color(0xff4b4b4b)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Epic Feed",
                      style: TextStyle(color: Color(0xff2ecc71)),
                      ),
                      Text("Creator Eiichiro Oda reveals a game-changing event in 'One Piece'! What's next for Luffy and the crew? Dive into the latest scoop on the beloved series.",
                     style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "Popular Shows",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for(Model anime in animes)
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(right: 10),
                                backgroundColor: Colors.transparent
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                      Detail(img: anime.img, name: anime.name),
                              ));
                        }, child: Column(
                          children: [
                            SizedBox(
                              height: 120,
                                width: 82,
                              child: Image.asset(
                                anime.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(anime.name, style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),)
                          ],
                        ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
