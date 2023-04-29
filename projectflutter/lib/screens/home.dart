// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "MaxLook",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.rounded_corner_rounded,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
            )
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange.shade900),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Text(
                            "Get your special",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "sale up to 50%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Shop Now",
                                    style: TextStyle(
                                        color: Colors.orange.shade900,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ],
                      ),
                      Image.asset(
                        "images/11.png",
                        width: 200,
                        height: MediaQuery.of(context).size.height,
                      ),
                    ],
                  )),
            ),
            TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Newest",
                  ),
                  Tab(
                    text: "Popular",
                  ),
                  Tab(
                    text: "Man",
                  ),
                  Tab(
                    text: "Woman",
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}




