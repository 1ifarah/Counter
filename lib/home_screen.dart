import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;

  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 103, 123),
        centerTitle: true,
        title: Text("فَقُلْتُ اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.50,
                    height: MediaQuery.of(context).size.height / 1.50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 61, 103, 123),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 9),
                            blurRadius: 20,
                          )
                        ]),
                    child: Center(
                        child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                  Transform.translate(
                      offset: Offset(1, 9),
                      child: Container(
                        width: 190,
                        height: 160,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 61, 103, 123),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 9),
                                blurRadius: 20,
                                color: Colors.black,
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () => counter(),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 61, 103, 123),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  maximumSize: Size(80, 80)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () => reset(),
                                  child: Icon(Icons.wifi_protected_setup),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
