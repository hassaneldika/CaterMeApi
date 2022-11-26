import 'package:flutter/material.dart';

Widget buildOffers(BuildContext context, 
  String text1,
  String text2,
  ImageProvider<Object> image,
  )
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),         
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage( image: image,fit: BoxFit.cover)
                      ),
                      // child: 
                      // Image.asset(
                      //   'assets/images/B0i4KZYLg2cSh5SN3e9aIftar ramadan extra.png',
                      //   fit: BoxFit.cover,
                      //   height: MediaQuery.of(context).size.height * 0.18,
                      //   width: MediaQuery.of(context).size.width * 0.32,
                      // ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(text1,
                              style: const TextStyle(
                                  fontSize: 7, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(text2,
                                style: const TextStyle(
                                    fontSize: 8, color: Color(0xff3E5521))),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: FloatingActionButton(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xff3E5521),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  
