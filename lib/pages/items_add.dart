import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final rateController = TextEditingController();

  File? _selectedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
            child: Text(
          "ITEMS ADDING",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w200,
              fontFamily: "mainfont"),
        )),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 92, 35, 31),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _pickImage();
                  },
                  child: Container(
                    height: 210,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.amber),
                        image: const DecorationImage(
                            image:
                                AssetImage('asset/images/placeholder-image.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: nameController,
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                        hintText: "Name",
                        suffixIcon: Icon(Icons.food_bank_outlined)),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: rateController,
                    decoration: const InputDecoration(
                        hintText: "Rate",
                        suffixIcon: Icon(Icons.attach_money_rounded)),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Done"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedimage = File(pickedFile.path);
      });
    }
  }
}
