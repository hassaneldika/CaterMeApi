import 'package:flutter/material.dart';

Widget widgetAddonsImage(BuildContext context,  ImageProvider<Object> image,
  String text1,
  String text2,
  String text3,
  Color? color,
  double size,)
  {
    return Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.30,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color.fromARGB(255, 236, 229, 229)),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage( image: image,fit: BoxFit.cover)
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  height: 20,
                  width: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, right: 3),
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {},
                      child: const Icon(
                        size: 16,
                        Icons.add,
                        color: Color(0xff3E5521),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                text1,
                style: const TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                text2,
                style: TextStyle(
                  fontSize: size,
                  color: color,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                text3,
                style: TextStyle(
                  fontSize: 8,
                  color: color,
                ),
              )
            ],
          ),
        ],
      );
  }