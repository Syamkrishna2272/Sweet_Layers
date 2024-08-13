import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Special_widget extends StatefulWidget {
  const Special_widget({
    super.key,
    required this.cakes,
  });

  final List<Map<String, String>> cakes;

  @override
  State<Special_widget> createState() => _Special_widgetState();
}

class _Special_widgetState extends State<Special_widget> {
  List<bool> _isfavourite = [];

  @override
  void initState() {
    super.initState();
    _isfavourite = List<bool>.filled(widget.cakes.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.cakes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 15),
            child: Container(
              width: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(widget.cakes[index]['image']!),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isfavourite[index] = !_isfavourite[index];
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: _isfavourite[index]
                                      ? Colors.green
                                      : Colors.red,
                                  content: Text(
                                    _isfavourite[index]
                                        ? 'Added to Favorite'
                                        : 'Removed from Favorite',
                                  ),
                                  duration: const Duration(seconds: 1),
                                ),
                              );
                            });
                          },
                          child: Icon(
                            Icons.favorite,
                            size: 25,
                            color:
                                _isfavourite[index] ? Colors.red : Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(221, 26, 24, 24),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              widget.cakes[index]['text']!,
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
        },
      ),
    );
  }
}
