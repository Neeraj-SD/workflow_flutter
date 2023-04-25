import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobfindScreen extends StatelessWidget {
  const JobfindScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(255, 242, 242, 1)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Color.fromRGBO(255, 242, 242, 1),
              title: Text(
                'Job Search',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                    icon: const Icon(Icons.menu),
                    color: Colors.black,
                    onPressed: () {},
                  ))),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ), //apply padding to some sides only
                  child: Text(
                    "Hello USER",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(229, 224, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: IconButton(
                              icon: const Icon(Icons.search),
                              color: Colors.black,
                              onPressed: () {},
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                              // decoration: InputDecoration(
                              //   labelText: 'Search',
                              // ),
                              ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                /*  Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ), //apply padding to some sides only
                  child: Text(
                    "CATEGORIES",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                offset: const Offset(
                                  0.0,
                                  0.0,
                                ),
                                blurRadius: 1.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: const Text(
                            "Carpenter",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                offset: const Offset(
                                  0.0,
                                  0.0,
                                ),
                                blurRadius: 1.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: const Text(
                            "Carpenter",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                offset: const Offset(
                                  0.0,
                                  0.0,
                                ),
                                blurRadius: 1.0,
                                spreadRadius: 0.5,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: const Text(
                            "Carpenter",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              */
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ), //apply padding to some sides only
                  child: Text(
                    "Recommendation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ), //apply padding to some sides only
                  child: Text(
                    "Work that suits you today...",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                //  Job Cards
                SizedBox(height: 10),

                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(229, 224, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                            child: Image.asset(
                              'assets/images/image.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Job Title',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Address',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Description',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        SizedBox(height: 35),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
