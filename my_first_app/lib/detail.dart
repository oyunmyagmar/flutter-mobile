import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String img;
  final String name;

  const Detail({required this.img, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_new, color: Color(0xff2ecc71),)),
                    const Text(
                      "iMax",
                      style: TextStyle(
                          color: Color(0xff2ECC71),
                          fontFamily: "Limelight",
                          fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  width: 310,
                  child: Image.asset(img, fit: BoxFit.cover,),
                ),
                const SizedBox(height: 40,),
                Text(
                  name,
                  style: TextStyle(
                    color: const Color(0xFF2ECC71),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15,),
                Text(
                  "Mitsuha Miyamizu is a high school student in the rural town of Itomori, Japan. Bored of the town, she wishes to be a Tokyo boy in her next life. Soon, she begins to intermittently switch bodies with Taki Tachibana, a boy from Tokyo. On certain days, Taki and Mitsuha wake up in each other's bodies and must live the entire day as the other, reverting when they go to sleep at night. The two set up ground rules for sharing their bodies, communicating via messages on paper, their phones, and their skin. Mitsuha (in Taki's body) sets Taki up on a date with his coworker, Miki Okudera, while Taki (in Mitsuha's body) helps Mitsuha become more popular at school. While in Mitsuha's body, Taki accompanies Mitsuha's grandmother Hitoha and younger sister Yotsuha to the Shinto shrine on a mountain near Itomori, leaving an offering of kuchikamizake made with Mitsuha's saliva.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
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
