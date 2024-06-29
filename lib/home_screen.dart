import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List names = ['Monstera', 'Pothos', 'testpic', 'testpic1'];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE7F9DA),
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/log.png'),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .65,
                    mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'product');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                      width: size.width,
                                    ),
                                    Text(
                                      names[index],
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: size.width,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 60,
                            left: 60,
                            child: Image.asset(
                              'assets/tree.png',
                              height: 200,
                            ))
                      ],
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
