import 'package:flutter/material.dart';
import 'package:sweet_layers/component/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: [
            SizedBox(
              height: screenSize.height * 0.05,
            ),

            // Shop name
          const Text(
              "Sweet Layers",
              style: TextStyle( 
                fontSize: 33, 
                fontFamily: "mainfont",
                color: Color.fromARGB(255, 92, 35, 31),
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),

            //image
            Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 92, 35, 31),
                      offset: Offset(0, 4),
                      blurRadius: 20,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                      image: AssetImage('asset/images/home cake.jpg'),
                      fit: BoxFit.cover)),
              height: screenSize.height * 0.4,
              width: screenSize.width * 0.8,
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),

            //sub title
            const Text(
              maxLines: 10,
              """Let them  
             Eat cake 
              """,
              style: TextStyle(
                fontSize: 40,
                fontFamily: "mainfont",
                color: Color.fromARGB(255, 92, 35, 31),
                fontWeight: FontWeight.w400,
              ), 
            ),
            MyButton(text: "Get Start",
            onTap: () {Navigator.pushNamed(context, '/menupage');
              
            },)
          ], 
        ),
      ), 
    ); 
  }
}
