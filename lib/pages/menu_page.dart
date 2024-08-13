import 'package:flutter/material.dart';
import 'package:sweet_layers/component/special.dart';
import 'package:sweet_layers/pages/items_add.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "Malappuram",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        leading: const Icon(
          Icons.location_on_outlined,
          color: Colors.white,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 92, 35, 31),
      ),
      body: const MenuPageContent(cakes: [
        {
          'image': 'asset/images/83221_yummylicious-chocolate-cake.jpeg',
          'text': "Chocolate"
        },
        {
          'image': 'asset/images/Heart-Shape-Red-velvet-cake.jpg',
          'text': "Red velvet"
        },
        {
          'image': 'asset/images/mint-chocolate-cake-toujours-online.webp',
          'text': "Chocolate"
        },
        {
          'image': 'asset/images/sq-choco-vanilla-cake0006chva-AA-1000x1000.jpg',
          'text': "Choco Vanila"
        },
        {
          'image': 'asset/images/Strawberry2_9a51287f-66f7-4618-8a1f-99dd9b4a6c42.webp',
          'text': "Strawberry"
        },
        {
          'image': 'asset/images/Alphanso-Mango-Cake-jbt.jpg',
          'text': "Mango Special"
        },
        {'image': 'asset/images/cake-hack-tips.jpg', 'text': "Vancho"}
      ]),
    );
  }
}

class MenuPageContent extends StatelessWidget {
  final List<Map<String, String>> cakes;

  const MenuPageContent({super.key, required this.cakes});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 10, right: 10),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: const FadeInImage(
                        placeholder:
                            AssetImage('asset/images/placeholder-image.jpg'),
                        image: AssetImage('asset/images/offer cake.jpg'),
                        fit: BoxFit.cover,
                        fadeInDuration: Duration(milliseconds: 300),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Birth Day Deal...",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: "mainfont",
                            color: Color.fromARGB(255, 255, 252, 252),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Get Upto",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "30% OFF ",
                          style: TextStyle(
                            fontSize: 43,
                            fontFamily: "mainfont",
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here....",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return  const OrderPage();
                  }));
                },
                child: const Text("Add")),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Specials",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "mainfont",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Special_widget(cakes: cakes),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Grab your order",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "mainfont",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

