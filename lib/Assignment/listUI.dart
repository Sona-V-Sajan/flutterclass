import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Cities_Ui(),
  ));
}

class Cities_Ui extends StatelessWidget {
  const Cities_Ui({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(
            child: Text(
          "Cities Around World",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                color: Colors.orangeAccent,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/img/Delhi.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 50),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Delhi",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "India ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                "Population :3.2",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                color: Colors.orangeAccent,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/img/finland.png"),
                      fit: BoxFit.fitHeight,width: 120,height: 180,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 50),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Finland",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Europe ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                "Population :3.2",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                color: Colors.orangeAccent,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/img/London.jpg"),
                      fit: BoxFit.fitHeight,width: 120,height: 180,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 50),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "London",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "Uk ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text(
                                "Population :3.2",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                color: Colors.orangeAccent,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/img/Vancouver.jpg"),
                      fit: BoxFit.fitHeight,width: 120,height: 180,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 50),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Canada",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "India ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                "Population :3.2",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 150,
                color: Colors.orangeAccent,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/img/Newyork.jpg"),
                      fit: BoxFit.fitHeight,width: 120,height: 180,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 50),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "New york",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "India ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                "Population :3.2",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
