import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> ls = ["Michale", "Doni", "Daniel", "Steven"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pinkAccent.withOpacity(0.2),
                      ),
                      child: Image.asset("assets/images/boy.png"),
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                        child: Text(
                      "Hi John Smith",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(Icons.add_alert),
                    )
                  ],
                ),
                const SizedBox(height: 30),

                /// Rocket Container
                Container(
                  height: 120,
                  width: 350,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Discover Dow To Be Creative",
                          style: TextStyle(fontSize: 22, color: Colors.red),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          "assets/images/rockets.png",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instructor",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("See All"),
                  ],
                ),
                const SizedBox(height: 15),

                /// Instructor Images
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              "https://randomuser.me/api/portraits/men/8${i.toString()}.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                          Text(ls[i]),
                        ],
                      ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                /// Instructor Courses
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 210),
                      child: Text(
                        "Courses",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("All",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          Text("Design", style: TextStyle(fontSize: 17)),
                          Text("Programming", style: TextStyle(fontSize: 17)),
                          Text("Gaming", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Placeholder(
                        fallbackWidth: 100,
                        fallbackHeight: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/img.png",
                                        height: 60,
                                        width: 60,
                                      )),
                                ],
                              ),
                              const Icon(Icons.add_chart_sharp),
                              const Text("24 Lessons"),
                              const Icon(
                                Icons.play_circle_outline,
                                color: Colors.red,
                              ),
                              const Text("2Hr 30Min"),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "Learn Web Development",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        "https://cdn.hashnode.com/res/hashnode/image/upload/v1601241616724/cIZbNL_x2.png?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp",
                                        height: 60,
                                        width: 60,
                                      )),
                                ],
                              ),
                              const Icon(Icons.add_chart_sharp),
                              const Text("24 Lessons"),
                              const Icon(
                                Icons.play_circle_outline,
                                color: Colors.red,
                              ),
                              const Text("2Hr 30Min"),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "Learn Web Development",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
