import 'package:flutter/material.dart';

Widget buildHomeOrderDelivery(BuildContext context)
{
  return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 239, 239),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          height: MediaQuery.of(context).size.height * 0.22,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Delivering to',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(top: 4),
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Select',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Select address'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 5,),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Pick a saved delivery address or create a new one to place your order',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
}