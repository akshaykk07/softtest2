import 'package:flutter/material.dart';

import 'add_plant.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      appBar: AppBar(
        backgroundColor: const Color(0xffE7F9DA),
        title: const Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const CustomListTile(
                      title: 'Money Plant', leadingIcon: 'assets/icon.png');
                },
                itemCount: 3,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: CustomButton(name: 'Buy')),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: CustomButton(name: 'Home')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;

  final String leadingIcon;

  const CustomListTile({super.key, required this.title, required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
              leading: Image.asset(leadingIcon),
              title: Text(title),
              trailing: const Icon(
                Icons.delete_outlined,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
