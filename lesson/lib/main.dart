import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app bar"),
          backgroundColor: Colors.yellow,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text("My text", style: TextStyle(fontSize: 20, color: Colors.purple, fontWeight: FontWeight.w700),),
              ),
              Image.network("https://thumbs.dreamstime.com/b/two-ladybugs-orange-spring-flower-flight-insect-artistic-macro-image-concept-spring-summer-two-ladybugs-orange-125140826.jpg", width: 200,),
              SizedBox(height: 20,),
              Container(
                width: 200,
                height: 800,
                decoration: BoxDecoration(
                  color: Colors.teal,
                    borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 5)
                ),
                child: Center(child: Text("Text of the box")),
              ),
              TextButton(onPressed: (){}, child: Text("Click")),
              ElevatedButton(onPressed: (){}, child: Text("Submit")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.favorite),
                  Icon(Icons.settings),
                ],
              )
            ],
          ),
        ),
      ),
    )
  );
}


