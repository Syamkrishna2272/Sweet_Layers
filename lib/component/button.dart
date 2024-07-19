import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  String text;
  final void Function()? onTap;
  MyButton({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60  ,
        decoration: BoxDecoration(color: const Color.fromARGB(255, 146, 107, 104),
        borderRadius: BorderRadius.circular(40 )),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text(
              text,
              style: const TextStyle( 
                fontSize: 20, 
                fontFamily: "mainfont",
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(width: 10,),
            const Icon(Icons.arrow_forward,
            color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
