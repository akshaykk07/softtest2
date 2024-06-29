import 'package:flutter/material.dart';

import 'package:softtest1/add_plant.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  List images = ['assets/ic2.png', 'assets/ic2.png'];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      appBar: AppBar(
        backgroundColor: const Color(0xffE7F9DA),
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.03,
            right: size.width * 0.03,
            bottom: size.height * 0.02),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'assets/tree.png',
                    height: size.height * .4,
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                const Text(
                  'Monstera',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                const Text(
                  'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                const Text(
                  'View miore',
                  style: TextStyle(fontSize: 18),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Image.asset(images[index]),
                      ),
                    );
                  },
                  itemCount: 2,
                ),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: CustomButton(name: 'Buy')),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(child: CustomButton(name: 'Cart')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
