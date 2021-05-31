import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(0.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/leaf.jpg")),
                              color: Colors.grey,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          height: 0.25.sh,
                          width: 0.8.sw,
                        ),
                      ),
                      Positioned(
                        top: 0.018.sh,
                        left: 0.07.sw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sarah Ridley",
                              style: TextStyle(
                                  fontSize: 0.030.sh,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Photographer",
                              style: TextStyle(fontSize: 0.025.sh),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0.19.sh,
                        left: 0.7.sw,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(0.0,
                                        2.0), // shadow direction: bottom right
                                  )
                                ],
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/leaf.jpg")),
                                color: Colors.pink,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            height: 0.25.sh,
                            width: 0.8.sw,
                          ),
                        ),
                        Positioned(
                          top: 0.018.sh,
                          left: 0.07.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sarah Ridley",
                                style: TextStyle(
                                    fontSize: 0.030.sh,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Photographer",
                                style: TextStyle(fontSize: 0.025.sh),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0.19.sh,
                          left: 0.7.sw,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                padding: new EdgeInsets.only(
                    top: 0.003.sh,
                    bottom: 0.003.sh,
                    left: 0.02.sw,
                    right: 0.02.sw),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding: EdgeInsets.all(0.00.sh),
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: new EdgeInsets.all(0.015.sh),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "New Designs",
                    style: TextStyle(
                        fontSize: 0.04.sh, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 0.170.sh,
                          width: 0.65.sw,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/dog.jfif"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 0.140.sh,
                              width: 0.30.sw,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/lemon.jpg"))),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                height: 0.140.sh,
                                width: 0.35.sw,
                                child: Image(
                                    image: AssetImage("assets/chair.jpg"))),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 0.02.sw,
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 0.320.sh,
                          width: 0.23.sw,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("assets/perfume.PNG"))),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: new EdgeInsets.only(right: 0.02.sw),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/photo2.jfif"),
            ),
          )
        ],
        elevation: 0.0,
        title: Text(
          "Recommend",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: 0,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
                color: Colors.black,
              ),
              label: ""),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 4) {
      Navigator.pushNamed(context, '/profile');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/feed');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/notif');
    }
  }
}
