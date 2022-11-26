import 'package:flutter/material.dart';

Widget widgetMethodListViewCard(BuildContext context, String text, String text2,
    String image, double height, double width) {
  return Scaffold(
    backgroundColor: Colors.white,
      body: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Card(
                   color: const Color.fromARGB(255, 243, 239, 239),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        image,
                        height: MediaQuery.of(context).size.height * height,
                        width: MediaQuery.of(context).size.width * width,
                      ),
                    ),
                    title: Column(
                      children: [
                        SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.043,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                     Text(
                                      text,
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.035,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                       Text(
                                        text2,
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                      ],
                    ),
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        side: const BorderSide(width: 1, color: Color.fromARGB(255, 187, 138, 135)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Delete Card',
                        style: TextStyle(fontSize: 8,color: Colors.red),
                      ),
                    ),
                  ),
                );
              },
            ),
          ));
}
