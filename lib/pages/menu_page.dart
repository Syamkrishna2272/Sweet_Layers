import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sweet_layers/component/menu.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Map<String, String>> cakes = [
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
      'image':
          'asset/images/Strawberry2_9a51287f-66f7-4618-8a1f-99dd9b4a6c42.webp',
      'text': "Strawberry"
    },
    {
      'image': 'asset/images/Alphanso-Mango-Cake-jbt.jpg',
      'text': "Mango Special"
    },
    {'image': 'asset/images/cake-hack-tips.jpg', 'text': "Vancho"}
  ];
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
      body: SingleChildScrollView(
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
                height: 180,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('asset/images/offer cake.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25, left: 10),
                      child: Column(
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
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 15,
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
            SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cakes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25, right: 15),
                        child: Container(
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(cakes[index]['image']!),
                                  fit: BoxFit.cover)),
                          child: Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.favorite,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        padding: const EdgeInsets.all(15),
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromARGB(221, 26, 24, 24),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))),
                                        child: Text(
                                          cakes[index]['text']!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            const Menu(
              image: 'asset/images/breakfast-pastries-2.jpg',
              text: "Home made Dough",
              text1: "\$299.00",
            ),
            const SizedBox(
              height: 15,
            ),
            const Menu(
              image: 'asset/images/EgglessDutchTrufflePastry.jpg',
              text: "Choco Cake",
              text1: "\$199.00",
            ),
            const SizedBox(
              height: 15,
            ),
            const Menu(
              image: 'asset/images/exps17409_B163857D11_06_4b.jpg',
              text: "Cinnamon Fruit Biscuit",
              text1: "\$299.00",
            ),
            const SizedBox(
              height: 15,
            ),
            const Menu(
              image: 'asset/images/flatten.webp',
              text: "Croissant",
              text1: "\$99.00",
            ),
            const SizedBox(
              height: 15,
            ),
            const Menu(
              image: 'asset/images/french-pastry-recipes.webp',
              text: "Profiterole",
              text1: "\$399.00",
            ),
            const SizedBox(
              height: 15,
            ),
            const Menu(
              image:
                  'asset/images/how to make these raspberry and cream puff pastries.JPG',
              text: "Rasberry Puff",
              text1: "\$299.00",
            ),
            const SizedBox(
              height: 15,
            ),
            const Menu(
              image:
                  'asset/images/pain-aux-raisins-GettyImages-124761833-57b5975f3df78cd39c5f6f73.jpg',
              text: "Pain Aux",
              text1: "\$299.00",
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
