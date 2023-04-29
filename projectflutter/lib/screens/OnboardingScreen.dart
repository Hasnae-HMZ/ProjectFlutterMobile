import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_first/Screens/home.dart';
import 'package:flutter_first/Models/pageModel.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;
  List<PageModel> models = [
    PageModel(
      image: "https://images.unsplash.com/photo-1528459801416-a9e53bbf4e17?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=824&q=80",
      title: "Shop now",
      body:
          "Lorem ipsum is placeholder text commonly.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        
        alignment: Alignment.topCenter,
        children: [
          PageView.builder(
            onPageChanged: (newIndex) {
              setState(() {
                index = newIndex;
                print(index);
              });
            },
            itemCount: 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, pageIndex) => Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(models[0].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: 
                        
                        Stack(
                          alignment: Alignment.bottomCenter,
                          
                          children: [
                            Positioned(
                              bottom: 0,
                              child: 
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                                  
                                ),
                                child: 
                              Column(
                                
                                children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Container(child:
                                      Column(children: [
                                              Text("Start Finding Your Version",
                                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("The Best Fashion Style",
                                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,
                                              ),
                                              ),
                                              SizedBox(
                                              height: 10,
                                            ),
                                            Text("Your apparence shows your quality",style: TextStyle(color: Colors.grey,fontSize: 13,
                                              ),
                                              ),
                                              SizedBox(
                                              height: 10,
                                            ),
                                            Text("so give your best for your best fashion",style: TextStyle(color: Colors.grey,fontSize: 13,
                                              ),),
                                              SizedBox(
                                              height: 10,
                                            ),

                                              printDots(),
                                              SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: 170,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.orange.shade900,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(builder: (context) => HomePage()));
                                                },
                                                child: Text( "Get Started",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          
                                      ],),),
                                    )
                              ],),))
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget printDots() {
    List<Widget> dots = [];
    for (var i = 0; i < 3; i++) {
      dots.add(Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: index == i ? Colors.orange.shade900 : Colors.grey,
            borderRadius: BorderRadius.circular(200),
          ),
        ),
      ));
    }

    return Positioned(
      bottom: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: dots,
      ),
    );
  }
}