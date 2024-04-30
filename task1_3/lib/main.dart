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
      home: Ui3(),
    );
  }
}


class Ui3 extends StatelessWidget {
  const Ui3({super.key});

  final topicTitles = const [
    "Introduction",
    "How To Start Design?",
    "What Is UI/UX Design?",
    "User Experience Design",
    "Design Principles",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      /// Custom Row
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black12),
                              ),
                              child: const Icon(Icons.arrow_back_rounded),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              "Course Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black12)),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),

                      /// Video Player Widget
                      const VideoPlayerWidget(),
                      const SizedBox(height: 30),

                      /// Section choosing
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                "Playlist (27)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                "Description",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      /// Sections
                      for (int i = 0; i < 5; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Row(
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: i == 0
                                      ? Colors.deepOrange
                                      : Colors.orangeAccent.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  color:
                                  i == 0 ? Colors.white : Colors.deepOrange,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      topicTitles[i],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      "2 Min 43 Sec",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black45),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: i == 0
                                      ? Colors.blue
                                      : Colors.blue.withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  i == 0 ? Icons.lock_open_rounded : Icons.lock,
                                  color: i == 0 ? Colors.white : Colors.blue,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: const Text(
                  "Purchase Only - \$5",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffdedcdc),
      ),
      child: const Center(
        child: Text("Video Player"),
      ),
    );
  }
}

