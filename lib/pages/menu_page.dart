import 'package:flutter/material.dart';
import 'package:sweet_layers/component/menu.dart';
import 'package:sweet_layers/component/special.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const MenuPageContent(cakes: [
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
    ]), // Pass the cakes list here
    const Center(child: Text('Orders')),
    const Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 255, 253, 253),
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 20),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        onTap: _onItemTapped,
      ),
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
              height: 180,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('asset/images/offer cake.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
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
          const SizedBox(height: 15), 
          const Menu(
            image: 'asset/images/breakfast-pastries-2.jpg',
            text: "Home made Dough",
            text1: "\$299.00",
          ),
          const SizedBox(height: 15),
          const Menu(
            image: 'asset/images/EgglessDutchTrufflePastry.jpg',
            text: "Choco Cake",
            text1: "\$199.00",
          ),
          const SizedBox(height: 15),
          const Menu(
            image: 'asset/images/exps17409_B163857D11_06_4b.jpg',
            text: "Cinnamon Fruit Biscuit",
            text1: "\$299.00",
          ),
          const SizedBox(height: 15),
          const Menu(
            image: 'asset/images/flatten.webp',
            text: "Croissant",
            text1: "\$99.00",
          ),
          const SizedBox(height: 15),
          const Menu(
            image: 'asset/images/french-pastry-recipes.webp',
            text: "Profiterole",
            text1: "\$399.00",
          ),
          const SizedBox(height: 15),
          const Menu(
            image:
                'asset/images/how to make these raspberry and cream puff pastries.JPG',
            text: "Rasberry Puff",
            text1: "\$299.00",
          ),
          const SizedBox(height: 15),
          const Menu(
            image:
                'asset/images/pain-aux-raisins-GettyImages-124761833-57b5975f3df78cd39c5f6f73.jpg',
            text: "Pain Aux",
            text1: "\$299.00",
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
