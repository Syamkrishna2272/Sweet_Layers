import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  const Menu(
      {super.key,
      required this.image,
      required this.text,
      required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 92, 35, 31),
          borderRadius: BorderRadius.circular(18),
        ),
        margin: const EdgeInsets.only(left: 10, right: 8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                height: 65,
                fit: BoxFit.fitWidth,
                width: 70,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: "mainfont",
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "mainfont",
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
