import 'package:contact_book/bookcontroller/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_ContactPage.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactController controller = Get.find<ContactController>();
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "My Contact",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Container(
            height: (mediaQuery.size.height - 500),
            child: ListView.builder(
              itemCount: controller.name.length,
              itemBuilder: (context, index) {
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'Assets/img.png',
                      height: 40,
                      width: 40,
                    ),
                    InkWell(
                      child: Text(
                        controller.name[index],
                        style: const TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(5, 5))
                    ]),
                child: InkWell(
                  onTap: () {
                    Get.to(() => const addContact());
                  },
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "+",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      )),
                )),
          )
        ],
      ),
    );
  }
}
